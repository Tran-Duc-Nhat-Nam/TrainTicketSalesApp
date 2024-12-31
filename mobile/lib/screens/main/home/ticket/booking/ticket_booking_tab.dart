import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/api/ticket/booking_web_socket.dart';
import 'package:mobile/bloc/ticket/booking/tab/ticket_booking_tab_cubit.dart';
import 'package:mobile/widgets/app_button.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/state/app_state.dart';
import 'package:mobile/widgets/toast/toast.dart';

import '../../../../../common/styles/text_styles.dart';
import '../../../../../models/car/car.dart';

class TicketBookingTab extends StatefulWidget {
  const TicketBookingTab({
    super.key,
    required this.car,
    required this.tripId,
    required this.title,
  });

  final int tripId;
  final Car car;
  final String title;

  @override
  AppState<TicketBookingTab> createState() => _TicketBookingTabState();
}

class _TicketBookingTabState extends AppState<TicketBookingTab>
    with AutomaticKeepAliveClientMixin<TicketBookingTab> {
  late BookingWebSocket socket;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<TicketBookingTabCubit>(
      create: (context) {
        return TicketBookingTabCubit()
          ..loadData(
            context,
            widget.car,
            widget.tripId,
          );
      },
      child: BlocListener<TicketBookingTabCubit, TicketBookingTabState>(
        listener: (context, state) {
          state.maybeWhen(
            bookingSucceed: (ticket) {
              context.push("/trip/booking/customer", extra: ticket).then(
                (value) {
                  if (context.mounted) {
                    context.read<TicketBookingTabCubit>().loadData(
                          context,
                          widget.car,
                          widget.tripId,
                        );
                  }
                },
              );
            },
            bookingFailed: (message) {
              AppToast.showFailureToast(
                context,
                text: context.tr("error"),
                description: message,
              );
              context.read<TicketBookingTabCubit>().loadData(
                    context,
                    widget.car,
                    widget.tripId,
                  );
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<TicketBookingTabCubit, TicketBookingTabState>(
          builder: (context, state) => state.when(
            initial: () => const SizedBox(),
            loading: () => const AppLoadingWidget(),
            loaded: (seats, selectedSeat, soldTickets, userId, totalCost) =>
                Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(24),
                      color: Theme.of(context).colorScheme.surfaceContainer,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.chair_outlined,
                                      size: 40,
                                    ),
                                    Text(context.tr("availableSeat")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.chair_outlined,
                                      size: 40,
                                      color: Colors.redAccent[200],
                                    ),
                                    Text(context.tr("selectingSeat")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.chair_outlined,
                                      size: 40,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    Text(context.tr("soldSeat")),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    width: double.infinity,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    child: Center(
                                      child: Text(
                                        widget.title,
                                        style: AppTextStyles.mediumText
                                            .copyWith(color: Colors.white),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    width: double.infinity,
                                    child: StaggeredGrid.count(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 4,
                                      crossAxisSpacing: 8,
                                      children: seats.map((seat) {
                                        if (seat != null) {
                                          return StaggeredGridTile.count(
                                            crossAxisCellCount: 1,
                                            mainAxisCellCount: 1,
                                            child: Column(
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    context
                                                        .read<
                                                            TicketBookingTabCubit>()
                                                        .selectSeat(
                                                          widget.car.price,
                                                          seat.id,
                                                        );
                                                  },
                                                  iconSize: 40,
                                                  icon: Icon(
                                                    Icons.chair_outlined,
                                                    size: 40,
                                                    color: soldTickets.any(
                                                      (element) =>
                                                          element.seat.id ==
                                                          seat.id,
                                                    )
                                                        ? Theme.of(context)
                                                            .colorScheme
                                                            .primary
                                                        : selectedSeat[
                                                                    seat.id] ==
                                                                true
                                                            ? Colors
                                                                .redAccent[200]
                                                            : Theme.of(context)
                                                                .colorScheme
                                                                .secondary,
                                                  ),
                                                ),
                                                Text("${seat.col}${seat.row}")
                                              ],
                                            ),
                                          );
                                        } else {
                                          return const SizedBox();
                                        }
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          context.tr(
                            "totalCost",
                            args: [
                              NumberFormat.currency(locale: "vi_VN")
                                  .format(totalCost)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          context.tr(
                            "selectedSeat",
                            args: [
                              selectedSeat.length.toString(),
                              (seats.length - soldTickets.length).toString()
                            ],
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 24,
                    left: 24,
                    right: 24,
                  ),
                  child: AppButton(
                    onPressed: selectedSeat.isNotEmpty
                        ? () => context
                            .read<TicketBookingTabCubit>()
                            .startBooking(widget.tripId)
                        : null,
                    text: context.tr("continue"),
                  ),
                ),
              ],
            ),
            failed: (message) => AppErrorWidget(
              message: context.tr(message),
              onPressed: () => context.read<TicketBookingTabCubit>().loadData(
                    context,
                    widget.car,
                    widget.tripId,
                  ),
              buttonText: context.tr("reload"),
            ),
            booking: () => AppLoadingWidget(
              label: context.tr("bookingInProgress"),
            ),
            bookingSucceed: (tickets) => const SizedBox(),
            bookingFailed: (message) => const SizedBox(),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
