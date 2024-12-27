import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/request/signup/create_password/create_password_request.dart';

import '../../../api/account/account_api.dart';
import '../../../core/api/api_helper.dart';

part 'create_password_state.dart';
part 'create_password_cubit.freezed.dart';

class CreatePasswordCubit extends Cubit<CreatePasswordState> {
  CreatePasswordCubit() : super(const CreatePasswordState.initial());

  void loadData(BuildContext context) {
    emit(CreatePasswordState.loading());
    String username = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as String
        : "";
    emit(CreatePasswordState.loaded(username));
  }

  Future<void> createPassword(String password) async {
    state.whenOrNull(loaded: (username) async {
      emit(CreatePasswordState.create());
      await AccountAPI(await ApiHelper.getDioInstance())
          .createPassword(
              CreatePasswordRequest(email: username, password: password))
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
