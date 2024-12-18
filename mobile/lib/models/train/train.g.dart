// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainImpl _$$TrainImplFromJson(Map<String, dynamic> json) => _$TrainImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      cars: (json['cars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainImplToJson(_$TrainImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'cars': instance.cars,
    };
