// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatImpl _$$SeatImplFromJson(Map<String, dynamic> json) => _$SeatImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      seatType: json['seatType'] == null
          ? const SeatType()
          : SeatType.fromJson(json['seatType'] as Map<String, dynamic>),
      row: (json['row'] as num?)?.toInt() ?? -1,
      col: json['col'] as String? ?? "",
    );

Map<String, dynamic> _$$SeatImplToJson(_$SeatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seatType': instance.seatType,
      'row': instance.row,
      'col': instance.col,
    };
