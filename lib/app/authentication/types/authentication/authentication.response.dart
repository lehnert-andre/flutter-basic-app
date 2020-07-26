
import 'package:flutter_basic_app/modules/shared/types/types.package.dart';

import 'package:json_annotation/json_annotation.dart';

part 'authentication.response.g.dart';

@JsonSerializable()
class AuthenticationResponse extends TransferObject {

  String email;
  String jwt;
  List<String> permissions;

  AuthenticationResponse({
    this.email,
    this.jwt,
    this.permissions,
  });

  factory AuthenticationResponse.fromJson(json) => _$AuthenticationResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}