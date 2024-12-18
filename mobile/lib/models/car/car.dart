import 'package:freezed_annotation/freezed_annotation.dart';

import '../seat/seat.dart';
part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required int id,
    required String name,
    required int capacity,
    required int price,
    required List<Seat> seats,
    required int width,
  }) = _Car;

  factory Car.fromJson(Map<String, Object?> json)
  => _$CarFromJson(json);
}