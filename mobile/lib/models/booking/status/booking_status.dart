import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_status.freezed.dart';
part 'booking_status.g.dart';

@freezed
class BookingStatus with _$BookingStatus {
  const factory BookingStatus({
    required int id,
    required String name,
  }) = _BookingStatus;

  factory BookingStatus.fromJson(Map<String, Object?> json)
  => _$BookingStatusFromJson(json);
}