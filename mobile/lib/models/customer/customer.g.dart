// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num).toInt(),
      idNumber: json['idNumber'] as String,
      name: json['name'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      isMale: json['isMale'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idNumber': instance.idNumber,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'isMale': instance.isMale,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
