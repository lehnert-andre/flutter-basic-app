part of 'home.bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState({ this.user, this.isUserLoading, this.userError });

  final UserDO user;
  final bool isUserLoading;
  final ErrorDO userError;

  @override
  List<Object> get props => [user, isUserLoading];
}

class InitState extends HomeState {
  const InitState({ this.user, this.isUserLoading = false, this.userError });

  final UserDO user;
  final bool isUserLoading;
  final ErrorDO userError;

  @override
  List<Object> get props => [user, isUserLoading];
}

class HomeStateChanged extends HomeState {
  const HomeStateChanged({ this.user, this.isUserLoading, this.userError });

  final UserDO user;
  final bool isUserLoading;
  final ErrorDO userError;

  @override
  List<Object> get props => [user, isUserLoading];
}
