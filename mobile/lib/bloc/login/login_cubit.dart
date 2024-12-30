import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/api/api_helper.dart';
import 'package:mobile/core/auth/auth_helper.dart';
import 'package:mobile/core/shared_ref.dart';
import 'package:mobile/models/account/account.dart';

import '../../api/account/account_api.dart';
import '../../request/signup/account_request.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());

  Future<void> loadData() async {
    emit(LoginState.loading());
    bool isRemember = await sharedPreferences.getBool("isRemember") ?? false;
    emit(LoginState.loaded(isRemember));
  }
  Future<void> setRemember(bool isRemember) async {
    await sharedPreferences.setBool("isRemember", isRemember);
    emit(LoginState.loaded(isRemember));
  }

  Future<void> login(String username, String password,
      {bool isRemember = false}) async {
    emit(LoginState.login());
    AccountAPI(await ApiHelper.getDioInstance())
        .login(AccountRequest(username: username, password: password))
        .then(
      (value) {
        String? accessToken = value['accessToken'];
        String? refreshToken = value['refreshToken'];
        if (accessToken != null && refreshToken != null) {
          AuthHelper.setAuth(accessToken, refreshToken, isRemember).then(
            (value) => emit(LoginState.loginSucceed()),
            onError: (e) => emit(
              LoginState.loginFailed(
                e.toString(),
              ),
            ),
          );
        }
      },
      onError: (error) => emit(
        LoginState.loginFailed(
          error is DioException
              ? error.response.toString().replaceAll('"', '')
              : error.toString(),
        ),
      ),
    );
  }
}
