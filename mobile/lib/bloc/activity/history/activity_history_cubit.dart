import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../api/ticket/ticket_api.dart';
import '../../../core/api/api_helper.dart';
import '../../../core/shared_ref.dart';
import '../../../models/ticket/ticket.dart';

part 'activity_history_state.dart';
part 'activity_history_cubit.freezed.dart';

class ActivityHistoryCubit extends Cubit<ActivityHistoryState> {
  ActivityHistoryCubit() : super(const ActivityHistoryState.initial());

  Future<void> loadData(int id) async {
    emit(ActivityHistoryState.loading());
    int? userId = await sharedPreferences.getInt("userId");
    if (userId != null) {
      await TicketAPI(await ApiHelper.getDioInstance()).getList({
        'customerId': id,
      }).then(
            (value) => emit(ActivityHistoryState.loaded(value)),
        onError: (error) => emit(
          ActivityHistoryState.failed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : "unexpectedError",
          ),
        ),
      );
    } else {
      emit(ActivityHistoryState.failed("unauthorized"));
    }
  }
}
