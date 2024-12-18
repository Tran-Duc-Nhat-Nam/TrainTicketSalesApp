import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/models/station/station.dart';
import 'package:mobile/models/stop/stop.dart';
part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  const factory Route({
    required int id,
    required Station departureStation,
    required Station arrivalStation,
    required int distance,
    required int duration,
    required List<Stop> stops,
  }) = _Route;

  factory Route.fromJson(Map<String, Object?> json)
  => _$RouteFromJson(json);
}