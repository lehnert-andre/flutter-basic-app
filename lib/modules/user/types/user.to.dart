
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';

import 'package:json_annotation/json_annotation.dart';

part 'user.to.g.dart';

@JsonSerializable()
class UserTO extends TransferObject {

  int id;
  int version;
  String email;
  String qrCode;
  String jwt;
  List<String> permissions;
  int vereinId;
  List<int> veranstaltungenIds;

  UserTO({
    this.id,
    this.version,
    this.email,
    this.jwt,
    this.permissions,

    this.qrCode,
    this.vereinId,
    this.veranstaltungenIds
  });

  factory UserTO.fromJson(json) => _$UserTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserTOToJson(this);
}