import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/models/route/route.dart';
import 'package:mobile/models/train/train.dart';

import '../../core/converter/date_time_converter.dart';
part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required int id,
    required String code,
    required String name,
    required Train train,
    required Route route,
    @DateTimeConverter() required DateTime departureTime,
    @DateTimeConverter() required DateTime arrivalTime,
    required int soldSeat,
  }) = _Trip;

  factory Trip.fromJson(Map<String, Object?> json)
  => _$TripFromJson(json);
}