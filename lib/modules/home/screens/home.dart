import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/home/bloc/home.bloc.dart';
import 'package:flutter_basic_app/modules/home/data-provider/home.data-provider.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {

  final title = 'Home';
  HomeDataProvider get homeDataProvider => GetIt.I<HomeDataProvider>(); // get service instance from service locator

  @override
  Widget build(_) {
    return BlocProvider(
        create: (context) {
          return HomeBloc(
            homeDataProvider: RepositoryProvider.of<
                HomeDataProvider>(context),
          );
        },
        child: Screen(
          title: title,
          buildContent: buildContent,
        ),
    );
  }

  Widget buildContent(context, session) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (!AuthenticationSelector.isAuthenticated(state)) {
          HomeBloc.of(context).add(InvalidateSession());
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous != current,
        builder: (_, homeState) {
          return Builder(
            builder: (_) {
              return buildText(_, session, homeState);
            },
          );
        },
      ),
    );
  }

  Widget buildText(_, session, homeState) {
    return Column(
      children: <Widget>[
        BodyText('Home with session user: ${AuthenticationSelector.username(session) ?? 'Unknown'}'),
        SizedBox( height: 40 ),
        BodyText('Perform request with active session token to test the authentication:'),
        PrimaryButton(
          child: BodyText('Call /user/me'),
          onPressed: () async {
            HomeBloc.of(_).add(RequestWhoAmI(session: session));

          },
        ),
        BodyText('WhoAmI: ${HomeSelector.emailWithDefault(homeState, 'Unknown')}'),
      ],
    );
  }
}