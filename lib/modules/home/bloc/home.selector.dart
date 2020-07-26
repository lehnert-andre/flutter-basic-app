part of 'home.bloc.dart';

class HomeSelector {

  static UserDO user(HomeState state) {
    return state?.user;
  }

  static String email(HomeState state) {
    return user(state)?.email;
  }
}