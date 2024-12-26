part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.loaded(String username) = _Loaded;
  const factory SignUpState.failed(String message) = _Failed;
  const factory SignUpState.signup() = _Login;
  const factory SignUpState.signupSucceed(String username) = _SignupSucceed;
  const factory SignUpState.signupFailed(String message) = _SignupFailed;
}
