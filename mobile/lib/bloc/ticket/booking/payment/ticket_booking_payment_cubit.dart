import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_payment_state.dart';
part 'ticket_booking_payment_cubit.freezed.dart';

class TicketBookingPaymentCubit extends Cubit<TicketBookingPaymentState> {
  TicketBookingPaymentCubit() : super(const TicketBookingPaymentState.initial());

  void loadData(BuildContext context) {
    List<Ticket> ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : [];
    emit(ticket.isEmpty ? TicketBookingPaymentState.empty() : TicketBookingPaymentState.loaded(ticket));
  }
}
