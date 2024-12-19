import 'dart:convert';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/api/ticket/booking_web_socket.dart';
import 'package:mobile/bloc/ticket/booking/tab/ticket_booking_tab_cubit.dart';
import 'package:mobile/models/ticket/ticket.dart';
import 'package:mobile/widgets/app_button.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/state/app_state.dart';

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
  List<Ticket> soldTickets = [];

  @override
  void dispose() {
    socket.close();
    super.dispose();
  }

  Future<void> connect() async {
    socket = await BookingWebSocket.connect(widget.tripId, widget.car.id);
    socket.listen((data) {
      List<dynamic> convertedData = jsonDecode(data);
      if (mounted) {
        setState(() {
          soldTickets =
              convertedData.map((json) => Ticket.fromJson(json)).toList();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<TicketBookingTabCubit>(
      create: (context) {
        connect();
        return TicketBookingTabCubit()..loadData(widget.car.id);
      },
      child: BlocListener<TicketBookingTabCubit, TicketBookingTabState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              loading: () {},
              loaded: (seats, selectedSeat, userId, totalCost) {},
              failed: (message) {});
        },
        child: BlocBuilder<TicketBookingTabCubit, TicketBookingTabState>(
          builder: (context, state) => state.when(
            initial: () => Container(),
            loading: () => AppLoadingWidget(),
            loaded: (seats, selectedSeat, userId, totalCost) => Column(
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
                                child: Column(children: [
                                  Icon(
                                    Icons.chair_outlined,
                                    size: 40,
                                  ),
                                  Text(context.tr("availableSeat")),
                                ]),
                              ),
                              Expanded(
                                child: Column(children: [
                                  Icon(
                                    Icons.chair_outlined,
                                    size: 40,
                                    color: Colors.redAccent[200],
                                  ),
                                  Text(context.tr("selectingSeat")),
                                ]),
                              ),
                              Expanded(
                                child: Column(children: [
                                  Icon(
                                    Icons.chair_outlined,
                                    size: 40,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  Text(context.tr("soldSeat")),
                                ]),
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
                                      crossAxisSpacing: 4,
                                      children: List.generate(
                                        seats.length,
                                        (index) => StaggeredGridTile.count(
                                          crossAxisCellCount: 1,
                                          mainAxisCellCount: 1,
                                          child: IconButton(
                                            onPressed: () {
                                              context
                                                  .read<TicketBookingTabCubit>()
                                                  .selectSeat(
                                                    selectedSeat,
                                                    seats,
                                                    userId,
                                                    soldTickets,
                                                    widget.car.price,
                                                    seats[index].id,
                                                  );
                                            },
                                            iconSize: 40,
                                            icon: Icon(
                                              Icons.chair_outlined,
                                              size: 40,
                                              color: soldTickets.any(
                                                (element) =>
                                                    element.seat.id ==
                                                    seats[index].id,
                                              )
                                                  ? Theme.of(context)
                                                      .colorScheme
                                                      .primary
                                                  : selectedSeat[seats[index]
                                                              .id] ==
                                                          true
                                                      ? Colors.redAccent[200]
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                            ),
                                          ),
                                        ),
                                      ),
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
                            args: [totalCost.toString()],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          context.tr(
                            "selectedSeat",
                            args: [
                              selectedSeat.length.toString(),
                              widget.car.capacity.toString()
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
                    onPressed: () => context.push(
                      "/ticket/customer-info",
                      extra: {selectedSeat, userId},
                    ),
                    text: context.tr("continue"),
                  ),
                ),
              ],
            ),
            failed: (message) => AppErrorWidget(
              message: message,
              onPressed: () =>
                  context.read<TicketBookingTabCubit>().loadData(widget.car.id),
              buttonText: context.tr("reload"),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
