import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/ticket/booking/ticket/ticket_booking_ticket_cubit.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:mobile/widgets/state/app_state.dart';

import '../../../../../models/ticket/ticket.dart';

class TicketBookingTicketScreen extends StatefulWidget {
  const TicketBookingTicketScreen({super.key});

  @override
  AppState<TicketBookingTicketScreen> createState() =>
      _TicketBookingTicketScreenState();
}

class _TicketBookingTicketScreenState
    extends AppState<TicketBookingTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("bookingInfo"),
      child: BlocProvider<TicketBookingTicketCubit>(
        create: (context) => TicketBookingTicketCubit(),
        child: BlocBuilder<TicketBookingTicketCubit, TicketBookingTicketState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const AppLoadingWidget(),
              loaded: (tickets) => AppScreen(
                title: context.tr("bookingInfo"),
                child: AppErrorWidget(
                  message: "Test",
                  onPressed: () {},
                  buttonText: "Test",
                ),
              ),
              failed: (message) => AppErrorWidget(
                message: message,
                onPressed: () {},
                buttonText: context.tr("reload"),
              ),
            );
          },
        ),
      ),
    );
  }
}
