 import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_receipt_state.dart';
part 'ticket_booking_receipt_cubit.freezed.dart';

class TicketBookingReceiptCubit extends Cubit<TicketBookingReceiptState> {
  TicketBookingReceiptCubit() : super(const TicketBookingReceiptState.initial());
  void loadData(BuildContext context) {
    emit(TicketBookingReceiptState.loading());
    List<Ticket> ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : [];
    emit(ticket.isEmpty ? TicketBookingReceiptState.empty() : TicketBookingReceiptState.loaded(ticket));
  }
}
