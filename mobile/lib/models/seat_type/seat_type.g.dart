// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatTypeImpl _$$SeatTypeImplFromJson(Map<String, dynamic> json) =>
    _$SeatTypeImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
      extraPrice: (json['extraPrice'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$SeatTypeImplToJson(_$SeatTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'extraPrice': instance.extraPrice,
    };
