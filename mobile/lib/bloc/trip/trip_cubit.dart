import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/station/station_api.dart';
import 'package:mobile/models/station/station.dart';

import '../../core/api/api_helper.dart';
import '../../widgets/toast/dialog.dart';

part 'trip_state.dart';
part 'trip_cubit.freezed.dart';

class TripCubit extends Cubit<TripState> {
  TripCubit() : super(const TripState.initial());

  Future<void> getStations(BuildContext context) async {
    emit(TripState.loading());
    await AppDialog.checkAuth(context);
    await StationAPI(await ApiHelper.getDioInstance())
        .getAll()
        .then(
          (value) => emit(TripState.loaded(value)),
      onError: (error) => emit(
        TripState.loadFailed(
          error is DioException? error.response.toString().replaceAll('"', '') : "unexpectedError",
        ),
      ),
    );
  }
  
  void search(Map<String, dynamic> values) {
    emit(TripState.searching());
  }
}
