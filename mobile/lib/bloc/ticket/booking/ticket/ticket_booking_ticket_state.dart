part of 'ticket_booking_ticket_cubit.dart';

@freezed
class TicketBookingTicketState with _$TicketBookingTicketState {
  const factory TicketBookingTicketState.initial() = _Initial;
  const factory TicketBookingTicketState.loading() = _Loading;
  const factory TicketBookingTicketState.loaded(List<Ticket> tickets) = _Loaded;
  const factory TicketBookingTicketState.empty() = _Empty;
  const factory TicketBookingTicketState.failed(String message) = _Failed;
  const factory TicketBookingTicketState.moving() = _Moving;
  const factory TicketBookingTicketState.forward(List<Ticket> tickets) = _Forward;
  const factory TicketBookingTicketState.canceled() = _Canceled;
}
