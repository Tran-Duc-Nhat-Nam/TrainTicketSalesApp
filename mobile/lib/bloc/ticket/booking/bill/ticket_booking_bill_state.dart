part of 'ticket_booking_bill_cubit.dart';

@freezed
class TicketBookingBillState with _$TicketBookingBillState {
  const factory TicketBookingBillState.initial() = _Initial;
  const factory TicketBookingBillState.loading() = _Loading;
  const factory TicketBookingBillState.loaded(Ticket ticket) = _Loaded;
  const factory TicketBookingBillState.failed(String message) = _Failed;
}
