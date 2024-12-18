// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingStatusImpl _$$BookingStatusImplFromJson(Map<String, dynamic> json) =>
    _$BookingStatusImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BookingStatusImplToJson(_$BookingStatusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };
