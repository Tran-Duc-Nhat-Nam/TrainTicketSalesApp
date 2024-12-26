import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/request/signup/create_password/create_password_request.dart';

import '../../../api/account/account_api.dart';
import '../../../core/api/api_helper.dart';

part 'create_password_state.dart';
part 'create_password_cubit.freezed.dart';

class CreatePasswordCubit extends Cubit<CreatePasswordState> {
  CreatePasswordCubit() : super(const CreatePasswordState.initial());

  Future<void> createPassword(String password) async {
    state.whenOrNull(loaded: (username) async {
      emit(CreatePasswordState.create());
      await AccountAPI(await ApiHelper.getDioInstance())
          .createPassword(
              CreatePasswordRequest(username: username, password: password))
          .then(
            (value) => emit(CreatePasswordState.createSucceed(username)),
            onError: (error) => emit(
              CreatePasswordState.createFailed(
                error is DioException
                    ? error.response.toString().replaceAll('"', '')
                    : error.toString(),
              ),
            ),
          );
    });
  }
}
