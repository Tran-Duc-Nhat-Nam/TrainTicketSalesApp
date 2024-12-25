part of 'ticket_booking_payment_cubit.dart';

@freezed
class TicketBookingPaymentState with _$TicketBookingPaymentState {
  const factory TicketBookingPaymentState.initial() = _Initial;
  const factory TicketBookingPaymentState.loading() = _Loading;
  const factory TicketBookingPaymentState.loaded(List<Ticket> tickets) = _Loaded;
  const factory TicketBookingPaymentState.empty() = _Empty;

  const factory TicketBookingPaymentState.failed(String message) = _Failed;
}
