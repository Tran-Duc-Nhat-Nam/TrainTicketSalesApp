import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/api/seat/seat_api.dart';
import 'package:mobile/core/shared_ref.dart';
import 'package:mobile/models/ticket/ticket.dart';

import '../../../../core/api/api_helper.dart';
import '../../../../models/seat/seat.dart';

part 'ticket_booking_tab_state.dart';
part 'ticket_booking_tab_cubit.freezed.dart';

class TicketBookingTabCubit extends Cubit<TicketBookingTabState> {
  TicketBookingTabCubit() : super(const TicketBookingTabState.initial());

  Future<void> loadData(int id) async {
    emit(TicketBookingTabState.loading());
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
}
