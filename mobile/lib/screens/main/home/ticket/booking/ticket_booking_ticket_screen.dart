import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/ticket/booking/ticket/ticket_booking_ticket_cubit.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/core/converter/date_time_converter.dart';
import 'package:mobile/screens/main/home/ticket/widgets/ticket_info_detail.dart';
import 'package:mobile/widgets/app_button.dart';
import 'package:mobile/widgets/app_card.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:mobile/widgets/state/app_state.dart';

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
    return BlocProvider<TicketBookingTicketCubit>(
      create: (_) => TicketBookingTicketCubit()..loadData(context),
      child: BlocListener<TicketBookingTicketCubit, TicketBookingTicketState>(
        listener: (context, state) {
          state.whenOrNull(
            forward: (tickets) =>
                context.push("/trip/booking/payment", extra: tickets).then(
              (value) {
                if (context.mounted) {
                  context.read<TicketBookingTicketCubit>().loadData(context);
                }
              },
            ),
            canceled: () => context.go("/"),
          );
        },
        child: BlocBuilder<TicketBookingTicketCubit, TicketBookingTicketState>(
          builder: (context, state) {
            return PopScope(
              canPop: false,
              onPopInvokedWithResult: (didPop, result) {
                if (result != true) {
                  context
                      .read<TicketBookingTicketCubit>()
                      .cancelBooking(context);
                }
              },
              child: AppScreen(
                title: context.tr("bookingInfo"),
                isChildScrollView: true,
                child: state.when(
                  initial: () => const SizedBox(),
                  loading: () => const AppLoadingWidget(),
                  loaded: (tickets) => Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: CustomScrollView(
                            slivers: [
                              SliverStickyHeader.builder(
                                builder: (context, state) => Padding(
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
                                              style:
                                                  AppTextStyles.thinLargeText,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  context.tr("phone.short"),
                                                  style:
                                                      AppTextStyles.labelText,
                                                ),
                                                Text(
                                                  tickets[0]
                                                      .booking
                                                      .phoneNumber,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  context.tr("email.short"),
                                                  style:
                                                      AppTextStyles.labelText,
                                                ),
                                                Text(
                                                  tickets[0].booking.email,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  context.tr("idNumber.short"),
                                                  style:
                                                      AppTextStyles.labelText,
                                                ),
                                                Text(
                                                  tickets[0].idNumber,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  context.tr("note"),
                                                  style:
                                                      AppTextStyles.labelText,
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
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) =>
                                        TicketInfoDetail(ticket: tickets[0]),
                                    childCount: 0,
                                  ),
                                ),
                              ),
                              SliverStickyHeader.builder(
                                builder: (context, state) => Container(
                                  color: Theme.of(context).colorScheme.primary,
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            tickets[0]
                                                .trip
                                                .route
                                                .departureStation
                                                .name,
                                            style: AppTextStyles.semiLabelText
                                                .copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            DateTimeConverter.toDate(
                                              tickets[0].trip.departureTime,
                                            ),
                                            style: AppTextStyles.labelText
                                                .copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text("--->"),
                                      Column(
                                        children: [
                                          Text(
                                            tickets[0]
                                                .trip
                                                .route
                                                .arrivalStation
                                                .name,
                                            style: AppTextStyles.semiLabelText
                                                .copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            DateTimeConverter.toDate(
                                              tickets[0].trip.arrivalTime,
                                            ),
                                            style: AppTextStyles.labelText
                                                .copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) => Padding(
                                      padding: EdgeInsets.only(
                                        left: 12,
                                        right: 12,
                                        top: index == 0 ? 12 : 0,
                                        bottom: 8,
                                      ),
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 8,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Text(
                                                  context.tr(
                                                    "seat",
                                                    args: [
                                                      tickets[index].seat.col,
                                                      tickets[index]
                                                          .seat
                                                          .row
                                                          .toString(),
                                                    ],
                                                  ),
                                                  style: AppTextStyles
                                                      .thinLargeText,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Text(
                                                  index.toString(),
                                                  style: AppTextStyles
                                                      .thinLargeText
                                                      .copyWith(
                                                          color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    childCount: tickets.length,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: AppButton(
                            text: context.tr("pay"),
                            onPressed: () => context.push(
                              "/trip/booking/payment",
                              extra: tickets,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  empty: () => AppErrorWidget(
                    message: context.tr("noData.search"),
                    onPressed: () {},
                    buttonText: context.tr("reload"),
                  ),
                  failed: (message) => AppErrorWidget(
                    message: context.tr(message),
                    onPressed: () {},
                    buttonText: context.tr("reload"),
                  ),
                  moving: () => AppLoadingWidget(
                    label: context.tr("movingToPayment"),
                  ),
                  forward: (tickets) => const SizedBox(),
                  canceled: () => const SizedBox(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
