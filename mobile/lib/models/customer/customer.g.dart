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
      age: (json['age'] as num).toInt(),
      isMale: json['isMale'] as bool,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idNumber': instance.idNumber,
      'name': instance.name,
      'age': instance.age,
      'isMale': instance.isMale,
      'phoneNumber': instance.phoneNumber,
    };
