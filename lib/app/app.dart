import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'config/app-routes.dart';
import 'config/app-globals.dart';
import 'config/app-theme.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  _AppState() {
    setupRouter();
  }

  void setupRouter() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic App',
      theme: AppTheme.theme,
      initialRoute: Routes.ROOT.namedRoute,
      onGenerateRoute: Application.router.generator,
    );
  }
}