import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/app_screen.dart';

import '../../../widgets/state/app_state.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  AppState<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends AppState<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("activity"),
      child: Center(
        child: Text(
          context.tr("activity"),
        ),
      ),
    );
  }
}
