part of 'home.bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class RequestWhoAmI extends HomeEvent {
  final AuthenticationState session;

  const RequestWhoAmI({ this.session });

  @override
  List<Object> get props => [];
}