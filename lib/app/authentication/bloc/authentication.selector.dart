part of 'authentication.bloc.dart';

class AuthenticationSelector {

  static Session session(AuthenticationState state) {
    return state?.session;
  }

  static bool isAuthenticated(AuthenticationState state) {
    return session(state)?.isAuthenticated;
  }

  static String username(AuthenticationState state) {
    return session(state)?.username;
  }

}