import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/core/converter/date_time_converter.dart';
import 'package:mobile/models/trip/trip.dart';
import 'package:mobile/widgets/app_card.dart';
import 'package:mobile/widgets/app_text_button.dart';

class TripSummary extends StatelessWidget {
  const TripSummary({super.key, required this.trip});

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      titleText: trip.name,
      suffix: Row(
        children: [
          Text(
            context.plural(
                "remainingTicket",
                (trip.train.cars.isNotEmpty
                        ? trip.train.cars
                            .map((car) => car.capacity)
                            .reduce((sum, capacity) => sum + capacity)
                        : 0) -
                    trip.soldSeat),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Icon(
            Icons.airplane_ticket,
            color: Colors.white,
          ),
        ],
      ),
      footer: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: AppTextButton(
                  onPressed: () => context.push('/trip/detail', extra: trip.id),
                  text: context.tr("viewDetails"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              child: Center(
                child: AppTextButton(
                  onPressed: () => context.push('/trip/booking', extra: {
                    "trip_id": trip.id,
                    "train_id": trip.train.id,
                    "name": trip.name,
                  }),
                  text: context.tr("bookTickets"),
                ),
              ),
            ),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 12,
        ),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      DateTimeConverter.toShortTime(trip.departureTime),
                      style: AppTextStyles.extraLargeText,
                    ),
                    Text(
                      DateTimeConverter.toDate(trip.departureTime),
                      style: AppTextStyles.secondaryText,
                    ),
                    Text(
                      context.tr('station',
                          args: [trip.route.departureStation.name]),
                      style: AppTextStyles.lightLargeText,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "${trip.arrivalTime.difference(trip.departureTime).inHours.toString().padLeft(2, '0')}h${(trip.arrivalTime.difference(trip.departureTime).inMinutes % 60).toString().padLeft(2, '0')}",
                    ),
                    Text(
                      '--->',
                      style: AppTextStyles.arrowText,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      DateTimeConverter.toShortTime(trip.arrivalTime),
                      style: AppTextStyles.extraLargeText,
                    ),
                    Text(
                      DateTimeConverter.toDate(trip.arrivalTime),
                      style: AppTextStyles.secondaryText,
                    ),
                    Text(
                      context.tr('station',
                          args: [trip.route.arrivalStation.name]),
                      style: AppTextStyles.lightLargeText,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
