import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:mobile/widgets/state/app_state.dart';

class ActivityHistoryScreen extends StatefulWidget {
  const ActivityHistoryScreen({super.key});

  @override
  AppState<ActivityHistoryScreen> createState() => _ActivityHistoryScreenState();
}

class _ActivityHistoryScreenState extends AppState<ActivityHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(title: context.tr("activityHistory"), child: Placeholder());
  }
}
