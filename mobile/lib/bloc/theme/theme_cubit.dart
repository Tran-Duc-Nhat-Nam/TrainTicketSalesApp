import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/theme/theme_helper.dart';

import '../../common/styles/theme.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial(PlatformDispatcher.instance.platformBrightness == Brightness.light ? appTheme : appDarkTheme));

  Future<void> loadTheme () async {
    emit(ThemeState.initial(await ThemeHelper.getTheme() ? appDarkTheme : appTheme));
  }

  void changeTheme (ThemeData theme) {
    ThemeHelper.setTheme(theme.brightness == Brightness.dark);
    emit(ThemeState.initial(theme));
  }
}
