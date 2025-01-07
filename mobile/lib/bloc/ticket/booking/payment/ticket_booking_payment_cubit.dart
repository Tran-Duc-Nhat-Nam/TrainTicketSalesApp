import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/api/booking/booking_api.dart';

import '../../../../api/ticket/ticket_api.dart';
import '../../../../core/api/api_helper.dart';
import '../../../../models/ticket/ticket.dart';

part 'ticket_booking_payment_state.dart';
part 'ticket_booking_payment_cubit.freezed.dart';

class TicketBookingPaymentCubit extends Cubit<TicketBookingPaymentState> {
  TicketBookingPaymentCubit()
      : super(const TicketBookingPaymentState.initial());

  void loadData(BuildContext context) {
    emit(TicketBookingPaymentState.loading());
    List<Ticket> ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : [];
    emit(
      ticket.isEmpty
          ? TicketBookingPaymentState.empty()
          : TicketBookingPaymentState.loaded(ticket),
    );
  }

  void pay(int tripId) {
    state.whenOrNull(
      loaded: (tickets) async {
        log("Starting Booking...", name: "Booking");
        emit(TicketBookingPaymentState.paying());
        log("Calling API...", name: "Booking");
        await TicketAPI(await ApiHelper.getDioInstance())
            .get(tickets[0].id)
            .then(
          (value) async =>
              await BookingAPI(await ApiHelper.getDioInstance()).pay({
            'ticketIds': tickets.map((e) => e.id).toList(),
          }).then(
            (value) {
              log("Booking successfully", name: "Booking");
              emit(TicketBookingPaymentState.paySucceed(tickets));
            },
            onError: (error) {
              log("Booking failed", name: "Booking", error: error);
              emit(
                TicketBookingPaymentState.payFailed(
                  error is DioException
                      ? error.response.toString().replaceAll('"', '')
                      : "unexpectedError",
                ),
              );
            },
          ),
          onError: (e) {
            log(e.toString(), name: "Ticket booking payment");
            emit(
              TicketBookingPaymentState.canceled(),
            );
          },
        );
      },
    );
  }
}
