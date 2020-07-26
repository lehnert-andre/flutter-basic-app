import 'package:bloc/bloc.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/app/layout/app.dart';
import 'package:flutter_basic_app/app/application.module.dart';
import 'package:flutter_basic_app/modules/home/home.module.dart';
import 'package:flutter_basic_app/modules/shared/shared.module.dart';
import 'package:flutter_basic_app/modules/user/user.module.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'app/config/app-globals.dart';
import 'app/config/app-routes.dart';

void main() {
  // init application with all modules and services
  importModules();
  setupBloc();
  setupRouter();
  runApp(Main());
}

void importModules() {
  ApplicationModule().importModule();
  HomeModule().importModule();
  UserModule().importModule();
  SharedModule().importModule();
  // TODO import further modules to provide all module services
}

void setupBloc() {
  Bloc.observer = DefaultBlocObserver();
}

void setupRouter() {
  final router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...ApplicationModule.providers,
        ...HomeModule.providers,
        ...UserModule.providers,
        ...SharedModule.providers
        // TODO register further providers to handle the state management
      ],
      child: FutureBuilder(
        future: GetIt.I.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {

        return App(
          dataProviders: [
            ...ApplicationModule().instantiateServices(),
            ...HomeModule().instantiateServices(),
            ...UserModule().instantiateServices(),
            ...SharedModule().instantiateServices(),
            // TODO instantiate further service
          ]);
        } else {
          return Center(child: LoadingIndicator(),);
        }
        }
      ),
    );
  }
}