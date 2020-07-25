
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/home/screens/home.dart';
import 'package:flutter_basic_app/modules/home/screens/splash.dart';
import 'package:flutter_basic_app/modules/shared/screens/error.dart';
import 'package:flutter_basic_app/modules/user/screens/signin.dart';

class Route {
  final String _namedRoute;
  final String _label;

  Route(this._namedRoute, [
    this._label = ''
  ]);

  get namedRoute => _namedRoute;
  get label => _label;
}

class Routes {
  static final Route root = Route("/");
  static final Route home = Route("/home", "Home");
  static final Route signIn = Route("/signIn", "Sign In");
  static final Route errorNotFound = Route("/not-found");

  static final visibleRoutes = <Route>[
    home, signIn
  ];

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
          return ErrorScreen(errorMessage: 'Unknown route');
        });

    router.define(root.namedRoute, handler: _splashScreenRoute, transitionType: TransitionType.fadeIn);
    router.define(home.namedRoute, handler: _homeScreenRoute, transitionType: TransitionType.inFromRight);
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
