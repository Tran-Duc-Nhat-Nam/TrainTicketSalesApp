// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddInfoRequestImpl _$$AddInfoRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddInfoRequestImpl(
      email: json['email'] as String,
      idNumber: json['idNumber'] as String,
      name: json['name'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      isMale: json['isMale'] as bool,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$AddInfoRequestImplToJson(
        _$AddInfoRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'idNumber': instance.idNumber,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'isMale': instance.isMale,
      'phoneNumber': instance.phoneNumber,
    };
