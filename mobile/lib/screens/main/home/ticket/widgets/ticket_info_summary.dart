import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobile/models/ticket/ticket.dart';
import 'package:mobile/widgets/app_card.dart';


class TicketInfoSummary extends StatelessWidget {
  const TicketInfoSummary({
    super.key,
    required this.ticket,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppCard(
          titleText: context.tr('filter'),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 18,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Row(
                    spacing: 12,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                                ticket.trip.route.departureStation.name

                            ),
                            Text(
                              ticket.trip.route.departureStation.province.name
                            ),
                            Text(
                                Jiffy.parseFromDateTime(ticket.trip.departureTime).format(pattern: "dd/MM/yyyy")
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                                ticket.trip.route.arrivalStation.name
                            ),
                            Text(
                                ticket.trip.route.arrivalStation.province.name
                            ),
                            Text(
                                Jiffy.parseFromDateTime(ticket.trip.arrivalTime).format(pattern: "dd/MM/yyyy")
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}