import 'package:freezed_annotation/freezed_annotation.dart';
part 'seat_type.freezed.dart';
part 'seat_type.g.dart';

@freezed
class SeatType with _$SeatType {
  const factory SeatType({
    @Default(-1) int id,
    @Default("") String name,
    @Default(1) double extraPrice,
  }) = _SeatType;

  factory SeatType.fromJson(Map<String, Object?> json)
  => _$SeatTypeFromJson(json);
}