import 'package:freezed_annotation/freezed_annotation.dart';

import '../province/province.dart';
part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  const factory Station({
    required int id,
    required String code,
    required String name,
    required Province province,
  }) = _Station;

  factory Station.fromJson(Map<String, Object?> json)
  => _$StationFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}