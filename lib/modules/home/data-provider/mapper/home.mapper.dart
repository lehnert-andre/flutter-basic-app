import 'package:flutter_basic_app/modules/user/types/types.package.dart';

UserDO toDO(UserTO to) {
  return UserDO(
    id: to.id,
    version: to.version,
    email: to.email,
    jwt: to.jwt,
    permissions: _toPermissions(to.permissions)
  );
}


UserTO toTO(UserDO userDO) {
  return UserTO(
      id: userDO.id,
      version: userDO.version,
      email: userDO.email,
      jwt: userDO.jwt,
      permissions: _fromPermissions(userDO.permissions)
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


List<String> _fromPermissions(List<Permission> permissions) {
  List<String> values = [];
  for (var permission in permissions) {
    values.add(_fromPermission(permission));
  }
  return values;
}

String _fromPermission(Permission permission) {
   return permission.toString().substring(permission.toString().indexOf('.') + 1);
}

