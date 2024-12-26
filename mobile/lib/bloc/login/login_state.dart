part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.loaded(bool isRemember) = _Loaded;
  const factory LoginState.failed(String message) = _Failed;
  const factory LoginState.login() = _Login;
  const factory LoginState.loginSucceed() = _LoginSucceed;
  const factory LoginState.loginFailed(String message) = _LoginFailed;
}
