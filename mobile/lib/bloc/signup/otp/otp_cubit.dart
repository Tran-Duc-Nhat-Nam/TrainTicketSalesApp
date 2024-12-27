import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/request/signup/otp/otp_request.dart';

import '../../../api/account/account_api.dart';
import '../../../core/api/api_helper.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpState.initial());
  void loadData(BuildContext context) {
    emit(OtpState.loading());
    String username = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as String
        : "";
    log("username: $username", name: "OTP");
    emit(OtpState.loaded(username));
  }
  Future<void> submit(String otp) async {
    state.whenOrNull(loaded: (username) async {
      emit(OtpState.submit());
      await AccountAPI(await ApiHelper.getDioInstance())
          .submitOtp(OTPRequest(email: username, otp: otp))
          .then(
            (value) => emit(OtpState.submitSucceed(username)),
            onError: (error) => emit(
              OtpState.submitFailed(
                error is DioException
                    ? error.response.toString().replaceAll('"', '')
                    : error.toString(),
              ),
            ),
          );
    });
  }
}
