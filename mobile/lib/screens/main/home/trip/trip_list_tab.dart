import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobile/screens/main/home/trip/widgets/trip_summary.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../bloc/trip/trip_tab/trip_tab_cubit.dart';
import '../../../../models/station/station.dart';
import '../../../../widgets/app_loading_widget.dart';
import '../../../../widgets/state/app_state.dart';

class TripListTab extends StatefulWidget {
  const TripListTab(
      {super.key,
      required this.day,
      this.departureStation,
      this.arrivalStation});

  final Jiffy day;
  final Station? departureStation;
  final Station? arrivalStation;

  @override
  AppState<TripListTab> createState() => _TripListTabState();
}

class _TripListTabState extends AppState<TripListTab>
    with AutomaticKeepAliveClientMixin<TripListTab> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<TripTabCubit>(
      create: (context) => TripTabCubit()
        ..getTrips(
          context,
          widget.day,
          widget.departureStation,
          widget.arrivalStation,
        ),
      child: BlocBuilder<TripTabCubit, TripTabState>(
        builder: (context, state) => AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: state.when(
            initial: () => const SizedBox(),
            loading: () => const AppLoadingWidget(),
            loaded: (trips) => SmartRefresher(
              controller: _refreshController,
              enablePullDown: true,
              onRefresh: () => context.read<TripTabCubit>().getTrips(
                    context,
                    widget.day,
                    widget.departureStation,
                    widget.arrivalStation,
                  ),
              child: Skeletonizer(
                  enabled: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding:
                          EdgeInsets.only(top: index == 0 ? 24 : 0, bottom: 24),
                      child: TripSummary(
                        trip: trips[index],
                      ),
                    ),
                    shrinkWrap: true,
                    itemCount: trips.length,
                  )),
            ),
            empty: () => SmartRefresher(
              controller: _refreshController,
              enablePullDown: true,
              onRefresh: () => context.read<TripTabCubit>().getTrips(
                    context,
                    widget.day,
                    widget.departureStation,
                    widget.arrivalStation,
                  ),
              child: AppErrorWidget(
                message: context.tr("noTrip"),
                onPressed: () => context.read<TripTabCubit>().getTrips(
                      context,
                      widget.day,
                      widget.departureStation,
                      widget.arrivalStation,
                    ),
                buttonText: context.tr("reload"),
              ),
            ),
            failed: (message) => SmartRefresher(
              controller: _refreshController,
              enablePullDown: true,
              onRefresh: () => context.read<TripTabCubit>().getTrips(
                    context,
                    widget.day,
                    widget.departureStation,
                    widget.arrivalStation,
                  ),
              child: AppErrorWidget(
                message: context.tr(message),
                onPressed: () => context.read<TripTabCubit>().getTrips(
                      context,
                      widget.day,
                      widget.departureStation,
                      widget.arrivalStation,
                    ),
                buttonText: context.tr("reload"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
