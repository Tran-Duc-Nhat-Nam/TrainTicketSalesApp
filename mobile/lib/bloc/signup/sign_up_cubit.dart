import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/request/signup/account_request.dart';

import '../../api/account/account_api.dart';
import '../../core/api/api_helper.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState.initial());

  Future<void> signUp(String username, String password) async {
    emit(SignUpState.loading());
    await AccountAPI(await ApiHelper.getDioInstance())
        .signUp(AccountRequest(username: username, password: password)).then(
          (value) => emit(SignUpState.signupSucceed(username)),
      onError: (error) => emit(
        SignUpState.signupFailed(
          error is DioException
              ? error.response.toString().replaceAll('"', '')
              : error.toString(),
        ),
      ),
    );
  }
}
