
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/home/screens/home.dart';
import 'package:flutter_basic_app/modules/home/screens/splash.dart';
import 'package:flutter_basic_app/modules/shared/screens/error.dart';
import 'package:flutter_basic_app/modules/user/screens/signin.dart';

class Route {
  final String _namedRoute;

  Route(this._namedRoute);

  get namedRoute => _namedRoute;
}

class Routes {
  static Route root = Route("/");
  static Route home = Route("/home");
  static Route signIn = Route("/signIn");
  static Route errorNotFound = Route("/not-found");


  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
          return ErrorScreen(errorMessage: 'Unknown route');
        });

    router.define(root.namedRoute, handler: _splashScreenRoute, transitionType: TransitionType.fadeIn);
    router.define(home.namedRoute, handler: _homeScreenRoute, transitionType: TransitionType.fadeIn);
    router.define(signIn.namedRoute, handler: _signInScreenRoute, transitionType: TransitionType.inFromRight);
    // TODO define more route handler
  }

  static navigateTo(BuildContext context, Route route) {
    Navigator.pushNamed(context, route.namedRoute);
  }

  static navigateAndResetHistoryTo(BuildContext context, Route route) {
    Navigator.pushReplacementNamed(context, route.namedRoute);
  }

  static navigateBack(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigation Handler

  static final _splashScreenRoute = Handler(handlerFunc: (_, __) {
    return SplashScreen();
  });

  static final _homeScreenRoute = Handler(handlerFunc: (_, __) {
    return HomeScreen();
  });

  static final _signInScreenRoute = Handler(handlerFunc: (_, __) {
    return SignInScreen();
  });
}
