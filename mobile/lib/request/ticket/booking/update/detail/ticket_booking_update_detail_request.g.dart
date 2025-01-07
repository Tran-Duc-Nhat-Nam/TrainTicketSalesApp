// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_booking_update_detail_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketBookingUpdateDetailRequestImpl
    _$$TicketBookingUpdateDetailRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$TicketBookingUpdateDetailRequestImpl(
          seatId: (json['seatId'] as num).toInt(),
          name: json['name'] as String,
          idNumber: json['idNumber'] as String,
          dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
          isMale: json['isMale'] as bool,
        );

Map<String, dynamic> _$$TicketBookingUpdateDetailRequestImplToJson(
        _$TicketBookingUpdateDetailRequestImpl instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'name': instance.name,
      'idNumber': instance.idNumber,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'isMale': instance.isMale,
    };
