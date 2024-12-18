import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/toast/dialog.dart';

class LifecycleEventHandler extends WidgetsBindingObserver {
  final AsyncCallback? resumeCallBack;
  final AsyncCallback? suspendingCallBack;

  LifecycleEventHandler({
    this.resumeCallBack,
    this.suspendingCallBack,
  });

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    debugPrint("State changed ${state.name}");
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          debugPrint("Resume $state");
          await resumeCallBack!();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        if (suspendingCallBack != null) {
          await suspendingCallBack!();
        }
        break;
    }
  }
}

abstract class AppState<T extends StatefulWidget> extends State<T> {
  late LifecycleEventHandler observer;

  @override
  void initState() {
    observer = LifecycleEventHandler(
      resumeCallBack: () async => setState(
        () {
          initService(context);
        },
      ),
    );
    WidgetsBinding.instance.addObserver(observer);
    super.initState();
    initService(context);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(observer);
    super.dispose();
  }

  Future<void> initService(BuildContext context) async {
    AppDialog.checkAuth(context);
  }
}
