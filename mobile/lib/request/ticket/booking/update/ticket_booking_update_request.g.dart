// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_booking_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketBookingUpdateRequestImpl _$$TicketBookingUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketBookingUpdateRequestImpl(
      bookingId: (json['bookingId'] as num).toInt(),
      selectedSeatId: (json['selectedSeatId'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$TicketBookingUpdateRequestImplToJson(
        _$TicketBookingUpdateRequestImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'selectedSeatId': instance.selectedSeatId,
    };
