import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/ticket/ticket_api.dart';

import '../../core/api/api_helper.dart';
import '../../core/shared_ref.dart';
import '../../models/ticket/ticket.dart';
import '../ticket/booking/tab/ticket_booking_tab_cubit.dart';

part 'activity_state.dart';
part 'activity_cubit.freezed.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(const ActivityState.initial());

  Future<void> loadData(int id) async {
    emit(ActivityState.loading());
    int? userId = await sharedPreferences.getInt("userId");
    if (userId != null) {
      await TicketAPI(await ApiHelper.getDioInstance()).getList({
        'customerId': id,
      }).then(
            (value) => emit(ActivityState.loaded(value)),
        onError: (error) => emit(
          ActivityState.failed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : "unexpectedError",
          ),
        ),
      );
    } else {
      emit(ActivityState.failed("unauthorized"));
    }
  }
}
