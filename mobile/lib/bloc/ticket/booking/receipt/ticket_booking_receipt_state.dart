part of 'ticket_booking_receipt_cubit.dart';

@freezed
class TicketBookingReceiptState with _$TicketBookingReceiptState {
  const factory TicketBookingReceiptState.initial() = _Initial;
  const factory TicketBookingReceiptState.loading() = _Loading;
  const factory TicketBookingReceiptState.loaded(List<Ticket> tickets) = _Loaded;
  const factory TicketBookingReceiptState.empty() = _Empty;
  const factory TicketBookingReceiptState.failed(String message) = _Failed;
}
