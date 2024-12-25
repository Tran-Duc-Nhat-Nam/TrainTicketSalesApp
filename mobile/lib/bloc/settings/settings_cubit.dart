import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/shared_ref.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  Future<void> getBiometrics() async {
    emit(SettingsState.loading());
    bool isBiometrics = await sharedPreferences.getBool("isBiometrics") ?? false;
    emit(SettingsState.loaded(isBiometrics));
  }

  Future<void> setBiometrics(bool value) async {
    await sharedPreferences.setBool("isBiometrics", value);
    emit(SettingsState.loaded(value));
  }
}
