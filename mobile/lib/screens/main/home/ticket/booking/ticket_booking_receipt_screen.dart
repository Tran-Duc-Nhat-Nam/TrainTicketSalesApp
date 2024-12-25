import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/ticket/booking/receipt/ticket_booking_receipt_cubit.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../widgets/app_screen.dart';
import '../../../../../widgets/state/app_state.dart';

class TicketBookingReceiptScreen extends StatefulWidget {
  const TicketBookingReceiptScreen({super.key});

  @override
  AppState<TicketBookingReceiptScreen> createState() =>
      _TicketBookingReceiptScreenState();
}

class _TicketBookingReceiptScreenState
    extends AppState<TicketBookingReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TicketBookingReceiptCubit>(
      create: (_) => TicketBookingReceiptCubit()..loadData(context),
      child: BlocBuilder<TicketBookingReceiptCubit, TicketBookingReceiptState>(
        builder: (context, state) => PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            context.go("/");
          },
          child: AppScreen(
            title: context.tr("receipt"),
            child: state.when(
              initial: () => const SizedBox(),
              loading: () => const AppLoadingWidget(),
              loaded: (tickets) => Column(
                children: [
                  QrImageView(data: tickets.map((e) => e.id).join("|")),
                ],
              ),
              empty: () => AppErrorWidget(
                message: context.tr("noData.search"),
                onPressed: () =>
                    context.read<TicketBookingReceiptCubit>().loadData(context),
                buttonText: context.tr("reload"),
              ),
              failed: (message) => AppErrorWidget(
                message: message,
                onPressed: () =>
                    context.read<TicketBookingReceiptCubit>().loadData(context),
                buttonText: context.tr("reload"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
