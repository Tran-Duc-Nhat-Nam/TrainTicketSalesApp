import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobile/api/trip/trip_api.dart';
import 'package:mobile/models/trip/trip.dart';

import '../../../core/api/api_helper.dart';
import '../../../models/station/station.dart';
import '../../../widgets/toast/dialog.dart';

part 'trip_tab_state.dart';
part 'trip_tab_cubit.freezed.dart';

class TripTabCubit extends Cubit<TripTabState> {
  TripTabCubit() : super(const TripTabState.initial());

  Future<void> getTrips(BuildContext context, Jiffy day,
      Station? departureStation, Station? arrivalStation) async {
    emit(TripTabState.loading());
    await AppDialog.checkAuth(context);
    Map<String, dynamic> query = {
      'departureDate': day.format(pattern: "yyyy-MM-ddThh:mm:ss")
    };
    if (departureStation != null) {
      query['departureStationId'] = departureStation.id;
    }
    if (arrivalStation != null) {
      query['arrivalStationId'] = arrivalStation.id;
    }
    await TripAPI(await ApiHelper.getDioInstance()).getSome(query).then(
      (value) {
        emit(TripTabState.loaded(value));
      },
      onError: (error) {
        log(error is Error ? error.stackTrace!.toString() : error.toString(),
            name: "Trips");
        emit(
          TripTabState.failed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : error.toString(),
          ),
        );
      },
    );
  }
}
