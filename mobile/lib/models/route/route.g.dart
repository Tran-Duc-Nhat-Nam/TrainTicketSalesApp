// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
      id: (json['id'] as num).toInt(),
      departureStation:
          Station.fromJson(json['departureStation'] as Map<String, dynamic>),
      arrivalStation:
          Station.fromJson(json['arrivalStation'] as Map<String, dynamic>),
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      stops: (json['stops'] as List<dynamic>)
          .map((e) => Stop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'departureStation': instance.departureStation,
      'arrivalStation': instance.arrivalStation,
      'distance': instance.distance,
      'duration': instance.duration,
      'stops': instance.stops,
    };
