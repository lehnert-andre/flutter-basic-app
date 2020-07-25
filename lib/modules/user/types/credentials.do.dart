
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';

class CredentialsTO extends TransferObject {

  String _username = '';
  String _password = '';

  CredentialsTO(this._username, this._password);

  /* JSON */

  @override
  Map<String, dynamic> toJson() => {
    'username': _username,
    'password': _password
  };

  /* Getter/ Setter */

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }
}