part of 'ticket_booking_ticket_cubit.dart';

@freezed
class TicketBookingTicketState with _$TicketBookingTicketState {
  const factory TicketBookingTicketState.initial() = _Initial;
  const factory TicketBookingTicketState.loading() = _Loading;
  const factory TicketBookingTicketState.loaded(List<Ticket> tickets) = _Loaded;
  const factory TicketBookingTicketState.failed(String message) = _Failed;
}
