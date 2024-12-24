import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_ticket_state.dart';
part 'ticket_booking_ticket_cubit.freezed.dart';

class TicketBookingTicketCubit extends Cubit<TicketBookingTicketState> {
  TicketBookingTicketCubit() : super(const TicketBookingTicketState.initial());

  void loadData(BuildContext context) {
    List<Ticket> ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : [];
    log(ticket.toString(), name: "Ticket booking ticket");
    emit(ticket.isEmpty ? TicketBookingTicketState.empty() : TicketBookingTicketState.loaded(ticket));
  }
}
