// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: (json['id'] as num).toInt(),
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      trip: Trip.fromJson(json['trip'] as Map<String, dynamic>),
      seat: Seat.fromJson(json['seat'] as Map<String, dynamic>),
      returnTrip: json['returnTrip'] == null
          ? null
          : Trip.fromJson(json['returnTrip'] as Map<String, dynamic>),
      returnSeat: json['returnSeat'] == null
          ? null
          : Seat.fromJson(json['returnSeat'] as Map<String, dynamic>),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'trip': instance.trip,
      'seat': instance.seat,
      'returnTrip': instance.returnTrip,
      'returnSeat': instance.returnSeat,
      'price': instance.price,
    };
