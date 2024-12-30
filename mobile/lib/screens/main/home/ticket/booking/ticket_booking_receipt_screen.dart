import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/ticket/booking/receipt/ticket_booking_receipt_cubit.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../common/styles/text_styles.dart';
import '../../../../../widgets/app_card.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AppCard(
                      titleText: context.tr("customerInfo"),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12),
                              child: Text(
                                tickets[0].booking.name,
                                style: AppTextStyles.thinLargeText,
                              ),
                            ),
                            Divider(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    context.tr("phone.short"),
                                    style: AppTextStyles.labelText,
                                  ),
                                  Text(
                                    tickets[0].booking.name,
                                    style: AppTextStyles
                                        .semiLabelText
                                        .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    context.tr("email.short"),
                                    style: AppTextStyles.labelText,
                                  ),
                                  Text(
                                    tickets[0].booking.account.username,
                                    style: AppTextStyles
                                        .semiLabelText
                                        .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    context.tr("note"),
                                    style: AppTextStyles.labelText,
                                  ),
                                  Text(
                                    tickets[0].note,
                                    style: AppTextStyles
                                        .semiLabelText
                                        .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: QrImageView(data: tickets.map((e) => e.id).join("|")),
                  ),
                ],
              ),
              empty: () => AppErrorWidget(
                message: "noData.search",
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
