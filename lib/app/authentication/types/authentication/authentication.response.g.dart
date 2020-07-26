// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationResponse _$AuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return AuthenticationResponse(
    email: json['email'] as String,
    jwt: json['jwt'] as String,
    permissions:
        (json['permissions'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'jwt': instance.jwt,
      'permissions': instance.permissions,
    };
