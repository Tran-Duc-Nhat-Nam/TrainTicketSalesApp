part of 'ticket_booking_tab_cubit.dart';

@freezed
class TicketBookingTabState with _$TicketBookingTabState {
  const factory TicketBookingTabState.initial() = _Initial;
  const factory TicketBookingTabState.loading() = _Loading;
  const factory TicketBookingTabState.loaded(List<Seat> seats, Map<int, bool> selectedSeat, int userId, int totalCost) = _Loaded;
  const factory TicketBookingTabState.failed(String message) = _Failed;
  const factory TicketBookingTabState.booking(List<Ticket> ticket) = _Booking;
  const factory TicketBookingTabState.bookingFailed(String message) = _BookingFailed;
}
