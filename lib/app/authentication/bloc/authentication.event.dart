part of 'authentication.bloc.dart';


abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class Authenticated extends AuthenticationEvent {
  const Authenticated(this.session);

  final Session session;

  @override
  List<Object> get props => [session];

  @override
  String toString() {
    return 'Authenticated{session: $session}';
  }
}

class Login extends AuthenticationEvent {
  const Login(this.username, this.password);

  final String username;
  final String password;

  @override
  List<Object> get props => [toString()];

  @override
  String toString() {
    return 'Login{username: $username, password: length=${password.length}';
  }
}

class Logout extends AuthenticationEvent {}