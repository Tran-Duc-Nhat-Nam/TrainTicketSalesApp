import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/account/account_api.dart';
import 'package:mobile/core/auth/auth_helper.dart';

import '../../core/api/api_helper.dart';
import '../../models/account/account.dart';
import '../../widgets/toast/dialog.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(const AccountState.initial());

  Future<void> getCustomerInfo(BuildContext context) async {
    emit(AccountState.loading());
    if (await AppDialog.checkAuth(context) == true) {
      await AccountAPI(await ApiHelper.getDioInstance())
          .get( (await AuthHelper.getUserId())!)
          .then(
            (value) => emit(AccountState.loaded(value)),
        onError: (error) => emit(
          AccountState.failed(
            error is DioException? error.response.toString().replaceAll('"', '') : "unexpectedError",
          ),
        ),
      );
    } else {
      emit(AccountState.noAccount());
    }
  }
}
