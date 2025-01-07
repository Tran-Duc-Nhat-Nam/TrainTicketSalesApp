// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketBookingRequestImpl _$$TicketBookingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketBookingRequestImpl(
      accountId: (json['accountId'] as num).toInt(),
      tripId: (json['tripId'] as num).toInt(),
      selectedSeatId: (json['selectedSeatId'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$TicketBookingRequestImplToJson(
        _$TicketBookingRequestImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'tripId': instance.tripId,
      'selectedSeatId': instance.selectedSeatId,
    };
