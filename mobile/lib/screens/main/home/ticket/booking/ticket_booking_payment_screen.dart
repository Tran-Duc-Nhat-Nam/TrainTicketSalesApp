import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/widgets/app_button.dart';
import 'package:mobile/widgets/state/app_state.dart';

import '../../../../../widgets/app_screen.dart';

class TicketBookingPaymentScreen extends StatefulWidget {
  const TicketBookingPaymentScreen({super.key});

  @override
  AppState<TicketBookingPaymentScreen> createState() =>
      _TicketBookingPaymentScreenState();
}

class _TicketBookingPaymentScreenState
    extends AppState<TicketBookingPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("payment"),
      footer: AppButton(onPressed: () => context.push("/trip/booking/receipt")),
      child: Placeholder(),
    );
  }
}
