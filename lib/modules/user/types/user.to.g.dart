// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTO _$UserTOFromJson(Map<String, dynamic> json) {
  return UserTO(
    id: json['id'] as int,
    version: json['version'] as int,
    email: json['email'] as String,
    jwt: json['jwt'] as String,
    permissions:
        (json['permissions'] as List)?.map((e) => e as String)?.toList(),
    qrCode: json['qrCode'] as String,
    vereinId: json['vereinId'] as int,
    veranstaltungenIds:
        (json['veranstaltungenIds'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$UserTOToJson(UserTO instance) => <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'email': instance.email,
      'qrCode': instance.qrCode,
      'jwt': instance.jwt,
      'permissions': instance.permissions,
      'vereinId': instance.vereinId,
      'veranstaltungenIds': instance.veranstaltungenIds,
    };
