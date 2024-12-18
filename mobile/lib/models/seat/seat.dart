import 'package:freezed_annotation/freezed_annotation.dart';

import '../seat_type/seat_type.dart';
part 'seat.freezed.dart';
part 'seat.g.dart';

@freezed
class Seat with _$Seat {
  const factory Seat({
    @Default(-1) int id,
    @Default(SeatType()) SeatType seatType,
    @Default(-1) int row,
    @Default("") String col,
  }) = _Seat;

  factory Seat.fromJson(Map<String, Object?> json)
  => _$SeatFromJson(json);
}