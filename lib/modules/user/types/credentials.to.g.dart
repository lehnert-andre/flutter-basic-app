// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredentialsTO _$CredentialsTOFromJson(Map<String, dynamic> json) {
  return CredentialsTO(
    json['username'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$CredentialsTOToJson(CredentialsTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
