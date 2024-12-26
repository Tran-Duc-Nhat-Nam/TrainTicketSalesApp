part of 'create_password_cubit.dart';

@freezed
class CreatePasswordState with _$CreatePasswordState {
  const factory CreatePasswordState.initial() = _Initial;
  const factory CreatePasswordState.loading() = _Loading;
  const factory CreatePasswordState.loaded(String username) = _Loaded;
  const factory CreatePasswordState.failed(String message) = _Failed;
  const factory CreatePasswordState.create() = _Create;
  const factory CreatePasswordState.createSucceed(String username) = _CreateSucceed;
  const factory CreatePasswordState.createFailed(String message) = _CreateFailed;
}
