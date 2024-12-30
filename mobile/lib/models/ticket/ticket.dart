import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/models/booking/booking.dart';

import '../seat/seat.dart';
import '../trip/trip.dart';
part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    required Booking booking,
    required Trip trip,
    required Seat seat,
    required Trip? returnTrip,
    required Seat? returnSeat,
    required String name,
    required String idNumber,
    required DateTime dateOfBirth,
    required bool isMale,
    required int price,
    required String note,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, Object?> json)
  => _$TicketFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}