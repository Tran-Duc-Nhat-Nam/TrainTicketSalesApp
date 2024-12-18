// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StopImpl _$$StopImplFromJson(Map<String, dynamic> json) => _$StopImpl(
      id: (json['id'] as num).toInt(),
      durationFromStart: (json['durationFromStart'] as num).toInt(),
      station: Station.fromJson(json['station'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StopImplToJson(_$StopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'durationFromStart': instance.durationFromStart,
      'station': instance.station,
    };
