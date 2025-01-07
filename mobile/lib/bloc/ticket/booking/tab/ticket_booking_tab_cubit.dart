import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/seat/seat_api.dart';
import 'package:mobile/core/shared_ref.dart';
import 'package:mobile/models/car/car.dart';
import 'package:mobile/models/ticket/ticket.dart';
import 'package:mobile/request/ticket/booking/ticket_booking_request.dart';
import 'package:mobile/widgets/toast/dialog.dart';

import '../../../../api/booking/booking_api.dart';
import '../../../../api/booking/web_socket/booking_web_socket.dart';
import '../../../../core/api/api_helper.dart';
import '../../../../models/booking/booking.dart';
import '../../../../models/seat/seat.dart';

part 'ticket_booking_tab_state.dart';
part 'ticket_booking_tab_cubit.freezed.dart';

class TicketBookingTabCubit extends Cubit<TicketBookingTabState> {
  TicketBookingTabCubit() : super(const TicketBookingTabState.initial());
  BookingWebSocket? socket;
  @override
  Future<void> close() {
    if (socket != null) socket!.close();
    return super.close();
  }

  Future<void> loadData(BuildContext context, Car car, int tripId) async {
    emit(TicketBookingTabState.loading());
    await AppDialog.checkAuth(context);
    int? userId = await sharedPreferences.getInt("userId");
    if (userId != null) {
      await SeatAPI(await ApiHelper.getDioInstance()).getList({
        'carId': car.id,
      }).then(
        (value) {
          Map<String, Map<int, Seat?>> temp = {};
          Set<String> columns = value.map((seat) => seat.col).toSet();
          for (String column in columns) {
            if (temp[column] == null) {
              temp[column] = {};
            }

            for (int i = 1; i <= car.width; i++) {
              Seat tempSeat = value.firstWhere(
                  (seat) => seat.col == column && seat.row == i,
                  orElse: () => Seat(id: -1));
              if (tempSeat.id != -1) {
                temp[column]![i] = tempSeat;
              } else {
                temp[column]![i] = null;
              }
            }
          }
          List<Seat?> seatMapList =
              temp.values.expand((seats) => seats.values).toList();
          emit(TicketBookingTabState.loaded(seatMapList, {}, [], userId, 0));
          connect(context, tripId, car.id);
        },
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

  Future<void> connect(BuildContext context, int tripId, int carId) async {
    await AppDialog.checkAuth(context);
    socket = await BookingWebSocket.connect(tripId, carId);
    log("Connect web_socket...", name: "Booking");
    socket!.listen(
      (data) {
        log(data, name: "Booking web socket data");
        List<dynamic> convertedData = jsonDecode(data);
        List<Ticket> soldTickets =
            convertedData.map((json) => Ticket.fromJson(json)).toList();
        state.whenOrNull(
          loaded: (seats, selectedSeat, _, userId, totalCost) async {
            if (socket!.isOpen()) {
              emit(
                TicketBookingTabState.loaded(
                  seats,
                  selectedSeat,
                  soldTickets,
                  userId,
                  totalCost,
                ),
              );
            } else {
              await socket!.reconnect();
              emit(
                TicketBookingTabState.loaded(
                  seats,
                  selectedSeat,
                  soldTickets,
                  userId,
                  totalCost,
                ),
              );
            }
          },
        );
      },
    );
  }

  void getTotalCost(Map<int, bool> selectedSeat, int carPrice) {
    state.maybeWhen(
      loaded: (seats, _, soldTickets, userId, __) {
        int totalCost = 0;
        var temp = selectedSeat.entries.map((e) {
          Seat? seat = seats.firstWhere(
            (seat) => seat != null && seat.id == e.key,
            orElse: () => Seat(),
          );
          return seat!.seatType.id * carPrice;
        }).toList();
        if (temp.isNotEmpty) totalCost = temp.reduce((a, b) => a + b);
        emit(TicketBookingTabState.loaded(
            seats, selectedSeat, soldTickets, userId, totalCost));
      },
      orElse: () {},
    );
  }

  void selectSeat(int carPrice, int seatId) {
    log("Selecting...", name: "Booking");
    state.maybeWhen(
      loaded: (seats, selectedSeat, soldTickets, userId, _) {
        log("Loaded", name: "Booking");
        Map<int, bool> temp = Map.from(selectedSeat);
        if (temp[seatId] == true) {
          temp.remove(seatId);
        } else if (!soldTickets.any(
          (element) => element.seat.id == seatId,
        )) {
          temp[seatId] = true;
        }
        getTotalCost(temp, carPrice);
      },
      orElse: () {
        log("Failed", name: "Booking");
      },
    );
  }

  void startBooking(int tripId) {
    state.whenOrNull(
      loaded: (seats, selectedSeat, soldTickets, userId, totalCost) async {
        log("Starting Booking...", name: "Booking");
        emit(TicketBookingTabState.booking());
        log("Calling API...", name: "Booking");
        await BookingAPI(await ApiHelper.getDioInstance())
            .create(TicketBookingRequest(
                accountId: userId,
                tripId: tripId,
                selectedSeatId:
                    selectedSeat.entries.map((entry) => entry.key).toList()))
            .then(
          (value) {
            log("Booking successfully", name: "Booking");
            emit(TicketBookingTabState.bookingSucceed(value));
          },
          onError: (error) {
            log("Booking failed", name: "Booking", error: error);
            emit(
              TicketBookingTabState.bookingFailed(
                error is DioException
                    ? error.response.toString().replaceAll('"', '')
                    : error.toString(),
              ),
            );
          },
        );
      },
    );
  }
}
