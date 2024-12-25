import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/ticket/booking/ticket_booking_cubit.dart';
import 'package:mobile/screens/main/home/ticket/booking/ticket_booking_tab.dart';

import '../../../../../common/styles/text_styles.dart';
import '../../../../../widgets/app_loading_widget.dart';
import '../../../../../widgets/app_screen.dart';
import '../../../../../widgets/state/app_state.dart';

class TicketBookingScreen extends StatefulWidget {
  const TicketBookingScreen({super.key});

  @override
  AppState<TicketBookingScreen> createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends AppState<TicketBookingScreen> {
  @override
  Widget build(BuildContext context) {
    var extra = GoRouterState.of(context).extra is Map<String, dynamic>
        ? GoRouterState.of(context).extra as Map<String, dynamic>
        : {};
    return BlocProvider<TicketBookingCubit>(
      create: (context) =>
          TicketBookingCubit()..getCars(context, extra['train_id'] ?? -1),
      child: AppScreen(
        title: extra['name'] ?? "",
        isChildScrollView: true,
        child: BlocBuilder<TicketBookingCubit, TicketBookingState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text(context.tr("noData"))),
              loading: () => const AppLoadingWidget(),
              loaded: (cars) => cars.isNotEmpty
                  ? DefaultTabController(
                      length: cars.length,
                      child: Column(
                        children: [
                          Container(
                            color:
                                Theme.of(context).colorScheme.surfaceContainer,
                            child: TabBar(
                              isScrollable: true,
                              tabAlignment: TabAlignment.center,
                              labelStyle: AppTextStyles.underlineLargeText,
                              unselectedLabelStyle: AppTextStyles.largeText,
                              indicatorColor:
                                  Theme.of(context).colorScheme.primary,
                              tabs: cars
                                  .map(
                                    (car) => Tab(
                                      text:
                                          "Toa ${cars.indexOf(car)}: ${car.name}",
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              children: cars
                                  .map(
                                    (car) => TicketBookingTab(
                                      title:
                                          "Toa ${cars.indexOf(car)}: ${car.name}",
                                      car: car,
                                      tripId: extra['trip_id'] ?? -1,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Center(child: Text(context.tr("noData"))),
              failed: (message) => Center(
                child: Text(
                  context.tr(message),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
