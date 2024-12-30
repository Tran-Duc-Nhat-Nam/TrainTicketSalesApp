// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: (json['id'] as num).toInt(),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      name: json['name'] as String,
      status: BookingStatus.fromJson(json['status'] as Map<String, dynamic>),
      ticketList: (json['ticketList'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'status': instance.status,
      'ticketList': instance.ticketList,
    };
