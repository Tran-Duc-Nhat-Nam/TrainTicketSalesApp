import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/app_screen.dart';
import '../../../../../widgets/state/app_state.dart';

class TicketBookingReceiptScreen extends StatefulWidget {
  const TicketBookingReceiptScreen({super.key});

  @override
  AppState<TicketBookingReceiptScreen> createState() =>
      _TicketBookingReceiptScreenState();
}

class _TicketBookingReceiptScreenState
    extends AppState<TicketBookingReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("receipt"),
      child: Placeholder(),
    );
  }
}
