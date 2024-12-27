part of 'add_info_cubit.dart';

@freezed
class AddInfoState with _$AddInfoState {
  const factory AddInfoState.initial() = _Initial;
  const factory AddInfoState.loading() = _Loading;
  const factory AddInfoState.loaded(String username) = _Loaded;
  const factory AddInfoState.failed(String message) = _Failed;
  const factory AddInfoState.add() = _Add;
  const factory AddInfoState.addSucceed(String username) = _AddSucceed;
  const factory AddInfoState.addFailed(String message) = _AddFailed;
  const factory AddInfoState.loginFailed(String message) = _LoginFailed;
}
