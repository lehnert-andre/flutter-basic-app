import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'config/app-globals.dart';
import 'config/app-routes.dart';
import 'config/app-theme.dart';


class App extends StatelessWidget {
  final AuthenticationDataProvider authenticationDataProvider = GetIt.I<AuthenticationDataProvider>();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
        value: authenticationDataProvider,
        child: BlocProvider(
          create: (context) {
            return AuthenticationBloc(
              authenticationRepository: RepositoryProvider.of<AuthenticationDataProvider>(context),
            );
          },
          child: MaterialApp(
                title: 'Basic App',
                theme: AppTheme.theme,
                initialRoute: Routes.ROOT.namedRoute,
                onGenerateRoute: Application.router.generator,
              ),
        ),
    );
  }
}