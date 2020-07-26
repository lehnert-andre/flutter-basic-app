// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationRequest _$AuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return AuthenticationRequest(
    json['username'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$AuthenticationRequestToJson(
        AuthenticationRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
