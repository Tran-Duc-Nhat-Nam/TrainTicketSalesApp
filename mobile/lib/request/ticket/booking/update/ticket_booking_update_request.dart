import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_booking_update_request.freezed.dart';
part 'ticket_booking_update_request.g.dart';

@freezed
class TicketBookingUpdateRequest with _$TicketBookingUpdateRequest {
  const factory TicketBookingUpdateRequest({
    required int bookingId,
    required List<int> selectedSeatId,
  }) = _TicketBookingUpdateRequest;

  factory TicketBookingUpdateRequest.fromJson(Map<String, Object?> json)
  => _$TicketBookingUpdateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}