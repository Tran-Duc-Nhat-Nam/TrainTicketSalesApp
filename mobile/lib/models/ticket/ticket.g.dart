// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: (json['id'] as num).toInt(),
      booking: Booking.fromJson(json['booking'] as Map<String, dynamic>),
      trip: Trip.fromJson(json['trip'] as Map<String, dynamic>),
      seat: Seat.fromJson(json['seat'] as Map<String, dynamic>),
      returnTrip: json['returnTrip'] == null
          ? null
          : Trip.fromJson(json['returnTrip'] as Map<String, dynamic>),
      returnSeat: json['returnSeat'] == null
          ? null
          : Seat.fromJson(json['returnSeat'] as Map<String, dynamic>),
      name: json['name'] as String,
      idNumber: json['idNumber'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      isMale: json['isMale'] as bool,
      price: (json['price'] as num).toInt(),
      note: json['note'] as String,
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking': instance.booking,
      'trip': instance.trip,
      'seat': instance.seat,
      'returnTrip': instance.returnTrip,
      'returnSeat': instance.returnSeat,
      'name': instance.name,
      'idNumber': instance.idNumber,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'isMale': instance.isMale,
      'price': instance.price,
      'note': instance.note,
    };
