
import 'package:equatable/equatable.dart';

import 'permission.enum.dart';

class Session extends Equatable {
  const Session({this.username, this.token, this.permissions});

  final String username;
  final String token;
  final List<Permission> permissions;

  @override
  List<Object> get props => [username, token];

  @override
  String toString() {
    return 'Session{username: $username, permissions: $permissions}';
  }

  bool get isAuthenticated => token != null;
}
