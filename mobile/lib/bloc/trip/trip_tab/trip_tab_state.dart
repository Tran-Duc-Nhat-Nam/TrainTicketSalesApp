part of 'trip_tab_cubit.dart';

@freezed
class TripTabState with _$TripTabState {
  const factory TripTabState.initial() = _Initial;
  const factory TripTabState.loading() = _Loading;
  const factory TripTabState.loaded(List<Trip> trips) = _Loaded;
  const factory TripTabState.failed(String message) = _Failed;
}
