// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      status: AccountStatus.fromJson(json['status'] as Map<String, dynamic>),
      idNumber: json['idNumber'] as String?,
      name: json['name'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      isMale: json['isMale'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'status': instance.status,
      'idNumber': instance.idNumber,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'isMale': instance.isMale,
      'phoneNumber': instance.phoneNumber,
    };
