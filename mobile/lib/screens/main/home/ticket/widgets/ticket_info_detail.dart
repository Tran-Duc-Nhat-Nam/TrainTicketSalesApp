import 'package:flutter/material.dart';

import '../../../../../models/ticket/ticket.dart';
import '../../../../../widgets/app_card.dart';

class TicketInfoDetail extends StatelessWidget {
  const TicketInfoDetail({super.key, required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      titleText: "Ticket Info",
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ticket ID: ${ticket.id}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text("Train: ${ticket.trip.name}"),
            SizedBox(height: 8.0),
            Text("Departure: ${ticket.trip.departureTime}"),
            SizedBox(height: 8.0),
            Text("Arrival: ${ticket.trip.arrivalTime}"),
            SizedBox(height: 8.0),
            Text("Seat: ${ticket.seat.col}${ticket.seat.row}"),
            SizedBox(height: 8.0),
            Text("Price: ${ticket.price}"),
          ],
        ),
      ),
    );
  }
}
