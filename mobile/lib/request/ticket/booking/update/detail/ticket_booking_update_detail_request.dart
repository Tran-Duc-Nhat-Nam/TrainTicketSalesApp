import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_booking_update_detail_request.freezed.dart';
part 'ticket_booking_update_detail_request.g.dart';

@freezed
class TicketBookingUpdateDetailRequest with _$TicketBookingUpdateDetailRequest {
  const factory TicketBookingUpdateDetailRequest({
    required int seatId,
    required String name,
    required String idNumber,
    required DateTime dateOfBirth,
    required bool isMale,
  }) = _TicketBookingUpdateDetailRequest;

  factory TicketBookingUpdateDetailRequest.fromJson(Map<String, Object?> json)
  => _$TicketBookingUpdateDetailRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}