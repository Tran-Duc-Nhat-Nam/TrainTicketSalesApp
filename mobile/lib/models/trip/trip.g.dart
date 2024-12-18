// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
      train: Train.fromJson(json['train'] as Map<String, dynamic>),
      route: Route.fromJson(json['route'] as Map<String, dynamic>),
      departureTime:
          const DateTimeConverter().fromJson(json['departureTime'] as String),
      arrivalTime:
          const DateTimeConverter().fromJson(json['arrivalTime'] as String),
      soldSeat: (json['soldSeat'] as num).toInt(),
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'train': instance.train,
      'route': instance.route,
      'departureTime': const DateTimeConverter().toJson(instance.departureTime),
      'arrivalTime': const DateTimeConverter().toJson(instance.arrivalTime),
      'soldSeat': instance.soldSeat,
    };
