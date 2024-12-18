// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      capacity: (json['capacity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      seats: (json['seats'] as List<dynamic>)
          .map((e) => Seat.fromJson(e as Map<String, dynamic>))
          .toList(),
      width: (json['width'] as num).toInt(),
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'capacity': instance.capacity,
      'price': instance.price,
      'seats': instance.seats,
      'width': instance.width,
    };
