import 'package:freezed_annotation/freezed_annotation.dart';

import '../station/station.dart';
part 'stop.freezed.dart';
part 'stop.g.dart';

@freezed
class Stop with _$Stop {
  const factory Stop({
    required int id,
    required int durationFromStart,
    required Station station,
  }) = _Stop;

  factory Stop.fromJson(Map<String, Object?> json)
  => _$StopFromJson(json);
}