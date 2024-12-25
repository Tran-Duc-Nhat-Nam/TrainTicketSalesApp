import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/bloc/ticket/booking/payment/ticket_booking_payment_cubit.dart';
import 'package:mobile/widgets/app_button.dart';
import 'package:mobile/widgets/state/app_state.dart';

import '../../../../../widgets/app_error_widget.dart';
import '../../../../../widgets/app_loading_widget.dart';
import '../../../../../widgets/app_screen.dart';

class TicketBookingPaymentScreen extends StatefulWidget {
  const TicketBookingPaymentScreen({super.key});

  @override
  AppState<TicketBookingPaymentScreen> createState() =>
      _TicketBookingPaymentScreenState();
}

class _TicketBookingPaymentScreenState
    extends AppState<TicketBookingPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("payment"),
      child: BlocProvider<TicketBookingPaymentCubit>(
        create: (_) => TicketBookingPaymentCubit()..loadData(context),
        child:
            BlocBuilder<TicketBookingPaymentCubit, TicketBookingPaymentState>(
          builder: (context, state) => state.when(
            initial: () => const SizedBox(),
            loading: () => const AppLoadingWidget(),
            loaded: (tickets) => AppButton(
              onPressed: () => context
                  .read<TicketBookingPaymentCubit>()
                  .pay(tickets[0].trip.id),
              text: context.tr("pay"),
            ),
            empty: () => AppErrorWidget(
              message: context.tr("noData.search"),
              onPressed: () =>
                  context.read<TicketBookingPaymentCubit>().loadData(context),
              buttonText: context.tr("reload"),
            ),
            failed: (message) => AppErrorWidget(
              message: message,
              onPressed: () =>
                  context.read<TicketBookingPaymentCubit>().loadData(context),
              buttonText: context.tr("reload"),
            ),
            paying: () => AppLoadingWidget(
              label: context.tr("payingInProgress"),
            ),
            paySucceed: () => const SizedBox(),
            payFailed: (String message) => AppErrorWidget(
              message: message,
              onPressed: () =>
                  context.read<TicketBookingPaymentCubit>().loadData(context),
              buttonText: context.tr("reload"),
            ),
          ),
        ),
      ),
    );
  }
}
