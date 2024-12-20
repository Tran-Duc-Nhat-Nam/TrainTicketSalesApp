import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/customer/customer_api.dart';
import 'package:mobile/models/customer/customer.dart';

import '../../../../core/api/api_helper.dart';
import '../../../../core/shared_ref.dart';
import '../../../../models/ticket/ticket.dart';
part 'ticket_booking_customer_state.dart';
part 'ticket_booking_customer_cubit.freezed.dart';

class TicketBookingCustomerCubit extends Cubit<TicketBookingCustomerState> {
  TicketBookingCustomerCubit()
      : super(const TicketBookingCustomerState.initial());

  Future<void> loadData() async {
    emit(TicketBookingCustomerState.loading());
    int? userId = await sharedPreferences.getInt("userId");
    if (userId != null) {
      await CustomerAPI(await ApiHelper.getDioInstance()).get(userId).then(
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
