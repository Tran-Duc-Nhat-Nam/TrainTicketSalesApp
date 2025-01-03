import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/request/signup/add_info/add_info_request.dart';

import '../../../api/account/account_api.dart';
import '../../../core/api/api_helper.dart';
import '../../../core/auth/auth_helper.dart';

part 'add_info_state.dart';
part 'add_info_cubit.freezed.dart';

class AddInfoCubit extends Cubit<AddInfoState> {
  AddInfoCubit() : super(const AddInfoState.initial());

  void loadData(BuildContext context) {
    emit(AddInfoState.loading());
    String username = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as String
        : "";
    emit(AddInfoState.loaded(username));
  }

  Future<void> addInfo(Map<String, dynamic> info) async {
    state.whenOrNull(loaded: (username) async {
      emit(AddInfoState.add());
      await AccountAPI(await ApiHelper.getDioInstance())
          .addInfo(
        AddInfoRequest(
          email: username,
          idNumber: info["idNumber"],
          name: info["name"],
          dateOfBirth: info["dateOfBirth"],
          isMale: info["isMale"],
          phoneNumber: info["phoneNumber"],
        ),
      )
          .then(
        (value) {
          String? accessToken = value['accessToken'];
          String? refreshToken = value['refreshToken'];
          if (accessToken != null && refreshToken != null) {
            AuthHelper.setAuth(accessToken, refreshToken, true).then(
              (value) => emit(AddInfoState.addSucceed(username)),
              onError: (e) => emit(
                AddInfoState.loginFailed(
                  e.toString(),
                ),
              ),
            );
          }
          emit(AddInfoState.addSucceed(username));
        },
        onError: (error) => emit(
          AddInfoState.addFailed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : error.toString(),
          ),
        ),
      );
    });
  }
}
