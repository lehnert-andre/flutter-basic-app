
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';
import 'package:flutter_basic_app/modules/user/types/permission.enum.dart';

class UserDO extends DataObject {

  int id;
  int version;
  String email;
  String jwt;
  List<Permission> permissions;

  UserDO({
    this.id,
    this.version,
    this.email,
    this.jwt,
    this.permissions,
  });
}