import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobile/screens/main/home/trip/widgets/trip_summary.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../bloc/trip/trip_tab/trip_tab_cubit.dart';
import '../../../../models/station/station.dart';
import '../../../../widgets/app_loading_widget.dart';

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
  State<TripListTab> createState() => _TripListTabState();
}

class _TripListTabState extends State<TripListTab>
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
        builder: (context, state) => state.when(
          initial: () => Container(),
          loading: () => AppLoadingWidget(),
          loaded: (trips) => SmartRefresher(
            controller: _refreshController,
            enablePullDown: true,
            onRefresh: () => context.read<TripTabCubit>().getTrips(
                  context,
                  widget.day,
                  widget.departureStation,
                  widget.arrivalStation,
                ),
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: index == 0 ? 24 : 0, bottom: 24),
                child: TripSummary(
                  trip: trips[index],
                ),
              ),
              shrinkWrap: true,
              itemCount: trips.length,
            ),
          ),
          failed: (message) => AppErrorWidget(
            message: message,
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
    );
  }
}
