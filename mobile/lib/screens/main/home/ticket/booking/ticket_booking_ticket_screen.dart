import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:mobile/widgets/state/app_state.dart';

class TicketBookingTicketScreen extends StatefulWidget {
  const TicketBookingTicketScreen({super.key});

  @override
  AppState<TicketBookingTicketScreen> createState() => _TicketBookingTicketScreenState();
}

class _TicketBookingTicketScreenState extends AppState<TicketBookingTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("bookingInfo"),
      child: AppErrorWidget(
        message: "Test",
        onPressed: () {},
        buttonText: "Test",
      ),
    );
  }
}
