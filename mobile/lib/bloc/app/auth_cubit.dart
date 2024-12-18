import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';

import '../../core/auth/auth_helper.dart';
import '../../core/shared_ref.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  Future<void> init() async {
    log("Initiating...", name: "Auth");
    bool isAuth = await AuthHelper.getAuth() ?? false;
    if (isAuth) {
      bool? isBiometrics = await sharedPreferences.getBool('isBiometrics');
      if (isBiometrics == true) {
        log("Is biometrics", name: "Auth");
        final LocalAuthentication auth = LocalAuthentication();
        final bool canBiometrics = await auth.canCheckBiometrics;
        if (canBiometrics) {
          log("Can biometrics", name: "Auth");
          final List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
          if (availableBiometrics.contains(BiometricType.strong)) {
            log("Go auth", name: "Auth");
            emit(AuthState.loaded(true));
            return;
          }
        }
      }
    }
    log("No auth", name: "Auth");
    emit(AuthState.loaded(false));
  }
}
