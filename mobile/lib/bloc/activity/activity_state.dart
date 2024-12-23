part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.initial() = _Initial;
  const factory ActivityState.loading() = _Loading;
  const factory ActivityState.loaded(List<Ticket> tickets) = _Loaded;
  const factory ActivityState.failed(String message) = _Failed;
}
