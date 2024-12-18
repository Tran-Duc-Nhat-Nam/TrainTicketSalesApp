import 'package:freezed_annotation/freezed_annotation.dart';

import '../car/car.dart';
part 'train.freezed.dart';
part 'train.g.dart';

@freezed
class Train with _$Train {
  const factory Train({
    required int id,
    required String code,
    required String name,
    required List<Car> cars,
  }) = _Train;

  factory Train.fromJson(Map<String, Object?> json)
  => _$TrainFromJson(json);
}