import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/api/account/account_api.dart';
import 'package:mobile/models/account/account.dart';

import '../../../../core/api/api_helper.dart';
import '../../../../core/shared_ref.dart';
import '../../../../models/ticket/ticket.dart';
part 'ticket_booking_customer_state.dart';
part 'ticket_booking_customer_cubit.freezed.dart';

class TicketBookingCustomerCubit extends Cubit<TicketBookingCustomerState> {
  TicketBookingCustomerCubit()
      : super(const TicketBookingCustomerState.initial());

  Future<void> loadData(BuildContext context) async {
    emit(TicketBookingCustomerState.loading());
    var ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : null;
    int? userId = await sharedPreferences.getInt("userId");
    if (userId != null) {
      await AccountAPI(await ApiHelper.getDioInstance()).get(userId).then(
        (value) async {
          emit(TicketBookingCustomerState.loaded(value));
        },
        onError: (error) => emit(
          TicketBookingCustomerState.failed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : "unexpectedError",
          ),
        ),
      );
    } else {
      emit(
        TicketBookingCustomerState.failed("cannotReadUserId"),
      );
    }
  }
}
