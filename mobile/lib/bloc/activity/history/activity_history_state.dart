part of 'activity_history_cubit.dart';

@freezed
class ActivityHistoryState with _$ActivityHistoryState {
  const factory ActivityHistoryState.initial() = _Initial;
  const factory ActivityHistoryState.loading() = _Loading;
  const factory ActivityHistoryState.loaded(List<Ticket> tickets) = _Loaded;
  const factory ActivityHistoryState.failed(String message) = _Failed;
}
