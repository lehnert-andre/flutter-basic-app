import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/home/data-provider/home.data-provider.dart';
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home.event.dart';
part 'home.state.dart';
part 'home.selector.dart';

typedef HomeStateSelector = dynamic Function(HomeState);

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc({@required this.homeDataProvider}) : super(null);

  final HomeDataProvider homeDataProvider;

  static HomeBloc of(BuildContext context) {
    return BlocProvider.of<HomeBloc>(context);
  }

  dynamic select(HomeStateSelector selector) {
    return selector(state);
  }

  /// dispatch reducer functions

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is RequestWhoAmI) {
      yield* _requestWhoAmI(event);
    } else if (event is InvalidateSession) {
      yield* _resetState();
    }
  }

  /// reducer functions

  Stream<HomeState> _requestWhoAmI(RequestWhoAmI event) async* {
    try {
        yield HomeStateChanged(isUserLoading: true);
        var session = AuthenticationSelector.session(event.session);
        homeDataProvider.useSession(session);

        var user = await homeDataProvider.sendWhoAmIRequest();
        yield HomeStateChanged(isUserLoading: false, user: user);
    } catch (e) {
      print('Error: $e');

      if (e is AppException) {
        yield HomeStateChanged(userError: e.error);
      } else {
        yield HomeStateChanged(userError: ErrorDO(errorMessage: '$e'));
      }
    }
  }

  Stream<HomeState> _resetState() async* {
    homeDataProvider.clearSession();
    yield HomeStateChanged();
  }
}
