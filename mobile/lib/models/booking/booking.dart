import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/models/account/account.dart';
import 'package:mobile/models/booking/status/booking_status.dart';
import 'package:mobile/models/ticket/ticket.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required int id,
    required Account account,
    required String email,
    required String phoneNumber,
    required String name,
    required BookingStatus status,
    required List<Ticket> ticketList,
  }) = _Booking;

  factory Booking.fromJson(Map<String, Object?> json)
  => _$BookingFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}