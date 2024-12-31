part of 'trip_cubit.dart';

@freezed
class TripState with _$TripState {
  const factory TripState.initial() = _Initial;
  const factory TripState.loading() = _Loading;
  const factory TripState.loaded(List<Station> stations) = _Loaded;
  const factory TripState.loadFailed(String message) = _Failed;
  const factory TripState.searching(List<Station> stations) = _Searching;
  const factory TripState.searchFailed(String message) = _SearchFailed;
}
