import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/car/car_api.dart';
import 'package:mobile/models/car/car.dart';

import '../../../core/api/api_helper.dart';

part 'ticket_booking_state.dart';
part 'ticket_booking_cubit.freezed.dart';

class TicketBookingCubit extends Cubit<TicketBookingState> {
  TicketBookingCubit() : super(const TicketBookingState.initial());

  Future<void> getCars(int id) async {
    emit(TicketBookingState.loading());
    await CarAPI(await ApiHelper.getDioInstance()).getSome({
      'trainId': id,
    }).then(
          (value) => emit(TicketBookingState.loaded(value)),
          onError: (error) => emit(
            TicketBookingState.failed(
              error is DioException
                  ? error.response.toString().replaceAll('"', '')
                  : "unexpectedError",
            ),
          ),
        );
  }
}
