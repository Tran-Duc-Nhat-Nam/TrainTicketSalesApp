part of 'ticket_booking_cubit.dart';

@freezed
class TicketBookingState with _$TicketBookingState {
  const factory TicketBookingState.initial() = _Initial;
  const factory TicketBookingState.loading() = _Loading;
  const factory TicketBookingState.loaded(List<Car> cars) = _Loaded;
  const factory TicketBookingState.failed(String message) = _Failed;
}
