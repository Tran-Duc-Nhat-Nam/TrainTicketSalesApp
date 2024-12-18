import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppToast {
  static void showSuccessToast(
    BuildContext context, {
    String? text,
    String? description,
  }) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      title: Text(text ?? context.tr("succeed")),
      description: description != null ? Text(description) : null,
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 2),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: highModeShadow,
      showProgressBar: false,
      dragToClose: true,
    );
  }

  static void showFailureToast(
      BuildContext context, {
        String? text,
        String? description,
      }) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flat,
      title: Text(text ?? context.tr("succeed")),
      description: description != null ? Text(description) : null,
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 2),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: highModeShadow,
      showProgressBar: false,
      dragToClose: true,
    );
  }
}
