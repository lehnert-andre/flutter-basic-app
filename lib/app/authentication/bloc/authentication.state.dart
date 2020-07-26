part of 'authentication.bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState({this.session});

  final Session session;

  @override
  List<Object> get props => [];
}

class Authenticated extends AuthenticationState {
  const Authenticated({this.session});

  final Session session;

  @override
  List<Object> get props => [session];
}

class Unauthenticated extends AuthenticationState {
  const Unauthenticated({this.session = const Session(), this.error });

  final Session session;
  final ErrorDO error;

  @override
  List<Object> get props => [];
}