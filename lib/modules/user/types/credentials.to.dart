
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';

import 'package:json_annotation/json_annotation.dart';

part 'credentials.to.g.dart';

@JsonSerializable(nullable: false)
class CredentialsTO extends TransferObject {

  String username = '';
  String password = '';

  CredentialsTO(this.username, this.password);

  /* JSON */

  @override
  Map<String, dynamic> toJson() => _$CredentialsTOToJson(this);

  factory CredentialsTO.fromJson(json) => _$CredentialsTOFromJson(json);
}