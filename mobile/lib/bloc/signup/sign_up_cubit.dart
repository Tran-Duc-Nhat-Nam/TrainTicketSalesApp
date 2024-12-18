import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../api/account/account_api.dart';
import '../../core/api/api_helper.dart';
import '../../models/account/account.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState.initial());

  Future<void> signUp(String username, String password) async {
    emit(SignUpState.loading());
    await AccountAPI(await ApiHelper.getDioInstance())
        .signUp(Account(id: -1, username: username, password: password))
        .then(
          (value) => emit(SignUpState.success()),
          onError: (error) => emit(
            SignUpState.failure(
              (error as DioException).response.toString().replaceAll('"', ''),
            ),
          ),
        );
  }
}
