part of 'trip_list_cubit.dart';

@freezed
class TripListState with _$TripListState {
  const factory TripListState.initial() = _Initial;
  const factory TripListState.loading() = _Loading;
  const factory TripListState.loaded(List<Jiffy> days) = _Loaded;
  const factory TripListState.failed() = _Failed;
}
