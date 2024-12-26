part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = _Loading;
  const factory OtpState.loaded(String username) = _Loaded;
  const factory OtpState.failed(String message) = _Failed;
  const factory OtpState.submit() = _Login;
  const factory OtpState.submitSucceed(String username) = _SubmitSucceed;
  const factory OtpState.submitFailed(String message) = _SubmitFailed;
}
