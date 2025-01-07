import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_booking_request.freezed.dart';
part 'ticket_booking_request.g.dart';

@freezed
class TicketBookingRequest with _$TicketBookingRequest {
  const factory TicketBookingRequest({
    required int accountId,
    required int tripId,
    required List<int> selectedSeatId,
  }) = _TicketBookingRequest;

  factory TicketBookingRequest.fromJson(Map<String, Object?> json)
  => _$TicketBookingRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}