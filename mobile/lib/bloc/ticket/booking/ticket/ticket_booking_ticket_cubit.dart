import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../api/ticket/ticket_api.dart';
import '../../../../core/api/api_helper.dart';
import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_ticket_state.dart';
part 'ticket_booking_ticket_cubit.freezed.dart';

class TicketBookingTicketCubit extends Cubit<TicketBookingTicketState> {
  TicketBookingTicketCubit() : super(const TicketBookingTicketState.initial());

  void loadData(BuildContext context) {
    emit(TicketBookingTicketState.loading());
    List<Ticket> ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : [];
    emit(
      ticket.isEmpty
          ? TicketBookingTicketState.empty()
          : TicketBookingTicketState.loaded(ticket),
    );
  }

  void moveForward(BuildContext context) {
    state.whenOrNull(
      loaded: (tickets) async {
        emit(TicketBookingTicketState.loading());
        await TicketAPI(await ApiHelper.getDioInstance())
            .get(
              tickets[0].id,
            )
            .then(
              (value) => emit(
                TicketBookingTicketState.forward(tickets),
              ),
              onError: (e) => emit(
                TicketBookingTicketState.canceled(),
              ),
            );
      },
    );
  }

  Future<void> cancelBooking(BuildContext context) async {
    emit(TicketBookingTicketState.loading());
    log("Deleting...", name: "Ticket booking ticket");
    List<Ticket> tickets = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : [];
    await TicketAPI(await ApiHelper.getDioInstance()).delete(
      {
        "ticketIds": tickets
            .map(
              (e) => e.id,
            )
            .toList(),
      },
    );
  }
}
