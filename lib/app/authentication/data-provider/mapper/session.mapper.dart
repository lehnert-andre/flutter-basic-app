
import '../../types/types.package.dart';

Session toSession(AuthenticationResponse to) {
  return Session(
    username: to.email,
    token: to.jwt,
    permissions: _toPermissions(to.permissions)
  );
}

List<Permission> _toPermissions(List<String> values) {
  List<Permission> permissions = [];
  for (var value in values) {
    permissions.add(_toPermission(value));
  }
  return permissions;
}

Permission _toPermission(String value) {
  for (Permission permission in Permission.values) {
    var permissionValue = permission.toString().substring(permission.toString().indexOf('.') + 1);
    if (value == permissionValue) {
      return permission;
    }
  }

  return null;
}
