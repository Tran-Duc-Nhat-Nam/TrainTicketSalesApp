part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loaded(bool canBiometrics) = _Loaded;
  const factory AuthState.authenticated() = _Authenticated;
}
