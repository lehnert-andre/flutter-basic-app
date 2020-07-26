import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/authentication/authentication.package.dart';
import 'package:flutter_basic_app/modules/home/data-provider/home.data-provider.dart';
import 'package:flutter_basic_app/modules/shared/data-provider/data-provider.package.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../config/app-globals.dart';
import '../config/app-routes.dart';
import '../config/app-theme.dart';


class App extends StatelessWidget {
  App({ this.dataProviders });

  final List<RepositoryProvider> dataProviders;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetIt.I.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {

            return MultiRepositoryProvider(
              providers: dataProviders,
              child: BlocProvider(
                create: (context) {
                  return AuthenticationBloc(
                    authenticationDataProvider: RepositoryProvider.of<AuthenticationDataProvider>(context),
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
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }
    );
  }
}