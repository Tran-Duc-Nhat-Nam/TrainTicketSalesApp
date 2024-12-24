import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/seat/seat_api.dart';
import 'package:mobile/api/ticket/ticket_api.dart';
import 'package:mobile/core/shared_ref.dart';
import 'package:mobile/models/ticket/ticket.dart';
import 'package:mobile/widgets/toast/dialog.dart';

import '../../../../core/api/api_helper.dart';
import '../../../../models/seat/seat.dart';

part 'ticket_booking_tab_state.dart';
part 'ticket_booking_tab_cubit.freezed.dart';

class TicketBookingTabCubit extends Cubit<TicketBookingTabState> {
  TicketBookingTabCubit() : super(const TicketBookingTabState.initial());

  Future<void> loadData(BuildContext context, int id) async {
    emit(TicketBookingTabState.loading());
    await AppDialog.checkAuth(context);
    int? userId = await sharedPreferences.getInt("userId");
    if (userId != null) {
      await SeatAPI(await ApiHelper.getDioInstance()).getList({
        'carId': id,
      }).then(
        (value) => emit(TicketBookingTabState.loaded(value, {}, userId, 0)),
        onError: (error) => emit(
          TicketBookingTabState.failed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : "unexpectedError",
          ),
        ),
      );
    } else {
      emit(TicketBookingTabState.failed("unauthorized"));
    }
  }

  void getTotalCost(
      Map<int, bool> selectedSeat, List<Seat> seats, int userId, int carPrice) {
    int totalCost = 0;
    var temp = selectedSeat.entries.map((e) {
      Seat seat = seats.firstWhere(
        (seat) => seat.id == e.key,
        orElse: () => Seat(),
      );
      return seat.seatType.id * carPrice;
    });
    if (temp.isNotEmpty) totalCost = temp.reduce((a, b) => a + b);
    emit(TicketBookingTabState.loaded(seats, selectedSeat, userId, totalCost));
  }

  void selectSeat(Map<int, bool> selectedSeat, List<Seat> seats, int userId,
      List<Ticket> soldTickets, int carPrice, int seatId) {
    Map<int, bool> temp = Map.from(selectedSeat);
    if (temp[seatId] == true) {
      temp.remove(seatId);
    } else if (!soldTickets.any(
      (element) => element.seat.id == seatId,
    )) {
      temp[seatId] = true;
    }
    getTotalCost(temp, seats, userId, carPrice);
  }

  Future<void> startBooking(
      Map<int, bool> selectedSeat, int userId, int tripId) async {
    log(
        "Start booking: ${{
          'selectedSeatId': selectedSeat.entries.map(
            (e) => e.key,
          ).toList(),
          "customerId": userId,
          "tripId": tripId,
        }}",
        name: "Booking");
    await TicketAPI(await ApiHelper.getDioInstance()).create({
      'selectedSeatId': selectedSeat.entries.map(
            (e) => e.key,
      ).toList(),
      "customerId": userId,
      "tripId": tripId,
    }).then(
      (value) {
        log("Booking successfully", name: "Booking");
        emit(TicketBookingTabState.booking(value));
      },
      onError: (error) {
        log("Booking failed", name: "Booking", error: error);
        emit(
          TicketBookingTabState.bookingFailed(
            error is DioException
                ? error.response.toString().replaceAll('"', '')
                : "unexpectedError",
          ),
        );
      },
    );
  }
}
