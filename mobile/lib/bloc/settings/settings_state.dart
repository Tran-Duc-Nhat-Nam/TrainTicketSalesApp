part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.loaded(bool isBiometrics) = _Loaded;
  const factory SettingsState.failed(String message) = _Failed;
}
