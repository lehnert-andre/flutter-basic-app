
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';

import 'package:json_annotation/json_annotation.dart';

part 'authentication.request.g.dart';

@JsonSerializable(nullable: false)
class AuthenticationRequest extends TransferObject {

  String username = '';
  String password = '';

  AuthenticationRequest(this.username, this.password);

  /* JSON */

  @override
  Map<String, dynamic> toJson() => _$AuthenticationRequestToJson(this);

  factory AuthenticationRequest.fromJson(json) => _$AuthenticationRequestFromJson(json);
}