import 'package:freezed_annotation/freezed_annotation.dart';

import '../customer/customer.dart';
import '../seat/seat.dart';
import '../trip/trip.dart';
part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    required Customer customer,
    required Trip trip,
    required Seat seat,
    required Trip? returnTrip,
    required Seat? returnSeat,
    required int price,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, Object?> json)
  => _$TicketFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}