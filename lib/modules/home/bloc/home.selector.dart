part of 'home.bloc.dart';

class HomeSelector {

  static UserDO user(HomeState state) {
    return state?.user;
  }

  static String email(HomeState state) {
    return user(state)?.email;
  }

  static String emailWithDefault(HomeState state, String defaultValue) {
    return user(state)?.email ?? defaultValue;
  }
}