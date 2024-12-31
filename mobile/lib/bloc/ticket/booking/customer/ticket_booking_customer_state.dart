part of 'ticket_booking_customer_cubit.dart';

@freezed
class TicketBookingCustomerState with _$TicketBookingCustomerState {
  const factory TicketBookingCustomerState.initial() = _Initial;
  const factory TicketBookingCustomerState.loading() = _Loading;
  const factory TicketBookingCustomerState.loaded(Account account) = _Loaded;
  const factory TicketBookingCustomerState.failed(String message) = _Failed;
}
