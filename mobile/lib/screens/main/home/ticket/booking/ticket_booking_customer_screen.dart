import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/ticket/booking/customer/ticket_booking_customer_cubit.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/models/ticket/ticket.dart';
import 'package:mobile/widgets/app_card.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/app_screen.dart';

import '../../../../../widgets/app_button.dart';

class TicketBookingCustomerScreen extends StatelessWidget {
  const TicketBookingCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var ticket = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as List<Ticket>
        : null;
    return AppScreen(
      title: context.tr("customerInfo"),
      child: BlocProvider<TicketBookingCustomerCubit>(
        create: (context) => TicketBookingCustomerCubit()..loadData(),
        child:
            BlocBuilder<TicketBookingCustomerCubit, TicketBookingCustomerState>(
          builder: (context, state) {
            return state.when(
              initial: () => SizedBox(),
              loading: () => AppLoadingWidget(),
              loaded: (customer) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Column(
                  spacing: 14,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      spacing: 14,
                      children: [
                        AppCard(
                          titleText: context.tr("contactInfo"),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 12),
                            child: Column(
                              spacing: 8,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  spacing: 8,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        customer.name,
                                        style:
                                            AppTextStyles.buttonText.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.edit,
                                      ),
                                      onTap: () {
                                        // Edit action
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  "${customer.phoneNumber} - ${customer.email}",
                                  style: AppTextStyles.largeText.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AppCard(
                          titleText: context.tr("customerInfo"),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.tr("title.adult"),
                                      style: AppTextStyles.buttonText.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ),
                                    Text(
                                      context.tr("subtitle.adult"),
                                      style: AppTextStyles.largeText.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Card(
                                          child: Column(
                                            children: [
                                              Text("Chiều đi"),
                                              Text("Ca 1 - ghế 11"),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppButton(
                      onPressed: () => context.push(
                        "/trip/booking/ticket",
                        extra: customer.id,
                      ),
                      text: context.tr("continue"),
                    ),
                  ],
                ),
              ),
              failed: (message) => AppErrorWidget(
                message: message,
                onPressed: () =>
                    context.read<TicketBookingCustomerCubit>().loadData(),
                buttonText: context.tr("reload"),
              ),
            );
          },
        ),
      ),
    );
  }
}
