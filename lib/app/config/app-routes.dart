
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/home/screens/home.dart';
import 'package:flutter_basic_app/modules/home/screens/splash.dart';
import 'package:flutter_basic_app/modules/shared/screens/error.dart';
import 'package:flutter_basic_app/modules/user/screens/profile.dart';
import 'package:flutter_basic_app/modules/user/screens/signin.dart';

class Route {
  final String _namedRoute;
  final String _label;
  final IconData _icon;

  Route(this._namedRoute, [
    this._label = '',
    this._icon = Icons.help_outline
  ]);

  get namedRoute => _namedRoute;
  get label => _label;
  get icon => _icon;
}

class Routes {
  static final Route ROOT = Route('/'); // ignore: non_constant_identifier_names
  static final Route HOME = Route("/home", "Home", Icons.home); // ignore: non_constant_identifier_names
  static final Route USER_PROFILE = Route("/profile", "User Profile", Icons.person); // ignore: non_constant_identifier_names
  static final Route SIGN_IN = Route("/signIn", "Sign In", Icons.person); // ignore: non_constant_identifier_names
  static final Route ERROR_NOT_FOUND = Route("/not-found"); // ignore: non_constant_identifier_names

  // Navigation Drawer routes with label
  static final visibleRoutes = <Route>[
    HOME, USER_PROFILE
  ];

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
          return ErrorScreen(errorMessage: 'Unknown route');
        });

    router.define(ROOT.namedRoute, handler: _splashScreenRoute, transitionType: TransitionType.fadeIn);
    router.define(HOME.namedRoute, handler: _homeScreenRoute, transitionType: TransitionType.inFromRight);
    router.define(USER_PROFILE.namedRoute, handler: _userProfileScreenRoute, transitionType: TransitionType.inFromRight);
    router.define(SIGN_IN.namedRoute, handler: _signInScreenRoute, transitionType: TransitionType.inFromRight);
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

  static final _userProfileScreenRoute = Handler(handlerFunc: (_, __) {
    return UserProfileScreen();
  });
}
