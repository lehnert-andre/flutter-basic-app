import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data-provider/authentication.data-provider.dart';
import '../types/types.package.dart';

part 'authentication.event.dart';
part 'authentication.state.dart';
part 'authentication.selector.dart';

typedef AuthenticationStateSelector = dynamic Function(AuthenticationState);

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  AuthenticationBloc({@required this.authenticationRepository}) : super(Unauthenticated());

  final AuthenticationDataProvider authenticationRepository;

  static AuthenticationBloc of(BuildContext context) {
    return BlocProvider.of<AuthenticationBloc>(context);
  }

  dynamic select(AuthenticationStateSelector selector) {
    return selector(state);
  }


  /// dispatch reducer functions

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is Login) {
      yield* _login(event);
    } else if (event is Logout) {
      yield* _logout();
    }
  }

  /// reducer functions

  Stream<AuthenticationState> _login(Login event) async* {
    try {
        print('Authenticating ...');
        var session = await authenticationRepository.logIn(
            authenticationRequest: AuthenticationRequest(event.username, event.password)
        );
        yield Authenticated(session: session);
        print('Authenticated !!!');
    } catch (e) {
      print('Error: $e');

      if (e is AppException) {
        yield Unauthenticated(error: e.error);
      } else {
        yield Unauthenticated(error: ErrorDO(errorMessage: '$e'));
      }
    }
  }

  Stream<AuthenticationState> _logout() async* {
    print('Logout');
    yield Unauthenticated();
  }

}
