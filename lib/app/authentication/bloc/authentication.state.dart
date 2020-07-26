part of 'authentication.bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState({this.session});

  final Session session;

  @override
  List<Object> get props => [];
}