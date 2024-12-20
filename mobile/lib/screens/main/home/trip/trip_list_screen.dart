import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/screens/main/home/trip/trip_list_tab.dart';
import 'package:mobile/widgets/app_screen.dart';

import '../../../../bloc/trip/trip_list/trip_list_cubit.dart';
import '../../../../widgets/app_loading_widget.dart';
import '../../../../widgets/state/app_state.dart';

class TripListScreen extends StatefulWidget {
  const TripListScreen({super.key});

  @override
  AppState<TripListScreen> createState() => _TripListScreenState();
}

class _TripListScreenState extends AppState<TripListScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> extras = GoRouterState.of(context).extra != null
        ? GoRouterState.of(context).extra as Map<String, dynamic>
        : {};
    return BlocProvider<TripListCubit>(
      create: (context) => TripListCubit()
        ..loadDays(context, extras["departureDateFrom"], extras["departureDateTo"]),
      child: AppScreen(
        title: context.tr("yourJourney"),
        isChildScrollView: true,
        child: BlocBuilder<TripListCubit, TripListState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text(context.tr("noData"))),
              loading: () => AppLoadingWidget(),
              loaded: (days) => days.length > 1
                  ? DefaultTabController(
                      length: days.length,
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
                              tabs: days
                                  .map(
                                    (day) => Tab(
                                      text:
                                          "${day.date.toString().padLeft(2, "0")}/${day.month.toString().padLeft(2, "0")}",
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              children: days
                                  .map(
                                    (day) => Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: TripListTab(
                                        day: day,
                                        departureStation:
                                            extras['departureStation'],
                                        arrivalStation:
                                            extras['arrivalStation'],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TripListTab(
                        day: days[0],
                        departureStation: extras['departureStation'],
                        arrivalStation: extras['arrivalStation'],
                      ),
                    ),
              failed: () => Center(
                child: Text(context.tr("error")),
              ),
            );
          },
        ),
      ),
    );
  }
}
