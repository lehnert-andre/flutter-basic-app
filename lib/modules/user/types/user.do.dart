
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';

class UserDO extends DataObject {

  int _id;
  int _version;
  String _email;
  String _qrCode;
  String _jwt;
  List<String> _permissions;
  int _vereinId;
  List<int> _veranstaltungenIds;

  UserDO();

  UserDO.fromJson(Map<String, dynamic> json)
      :
        _id = json['id'] as int,
        _version = json['version'] as int,
        _email = json['email'] as String,
        _qrCode = json['qrCode'] as String,
        _jwt = json['jwt'] as String,
        _vereinId = json['vereinId'] as int,
        _permissions = json['permissions'] != null
            ? List<String>.from(json['permissions'] as Iterable<dynamic>)
            : null,
        _veranstaltungenIds = json['veranstaltungenIds'] != null
            ? List<int>.from(json['veranstaltungenIds'] as Iterable<dynamic>)
            : null
  ;

  List<int> get veranstaltungenIds => _veranstaltungenIds;

  int get vereinId => _vereinId;

  List<String> get permissions => _permissions;

  String get jwt => _jwt;

  String get qrCode => _qrCode;

  String get email => _email;

  int get version => _version;

  int get id => _id;
}