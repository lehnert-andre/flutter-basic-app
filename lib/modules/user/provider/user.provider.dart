
import 'package:flutter/material.dart';
import 'package:flutter_basic_app/modules/user/types/types.package.dart';

class UserProvider extends ChangeNotifier {

  UserDO _userDO;

  set user(UserDO userDO) {
    this._userDO = userDO;
    notifyListeners();
  }

  UserDO get user => _userDO != null ? _userDO : null;
  String get email => _userDO != null ? _userDO.email : null;
  String get jwt => _userDO != null ? _userDO.jwt : null;
  List<String> get permissions => _userDO != null ? _userDO.permissions : [];
  bool get isSignedIn => _userDO != null;

}
