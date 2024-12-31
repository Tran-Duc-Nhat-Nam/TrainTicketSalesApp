import 'dart:developer';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../core/auth/auth_helper.dart';

class AppDialog {
  static dynamic _dialogKey;

  static Future<bool?> checkAuth(BuildContext context) async {
    bool? isAuth = await AuthHelper.getAuth();
    if (isAuth == false && context.mounted && _dialogKey == null) {
      _dialogKey = AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.scale,
        title: context.tr("title.sessionEnded"),
        desc: context.tr("subtitle.sessionEnded"),
        btnCancelText: context.tr("quit"),
        btnCancelOnPress: () => exit(0),
        btnOkText: context.tr("title.login"),
        btnOkOnPress: () {
          _dialogKey = null;
          context.go("/login");
        },
        dismissOnBackKeyPress: false,
        dismissOnTouchOutside: false,
        useRootNavigator: true,
        headerAnimationLoop: false,
      ).show();
    }
    return isAuth;
  }

  static void showLogoutDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.scale,
      title: context.tr("title.logout"),
      desc: context.tr("subtitle.logout"),
      btnCancelText: context.tr("back"),
      btnCancelColor: Theme.of(context).colorScheme.primary,
      btnOkText: context.tr("quit"),
      btnOkOnPress: () {
        AuthHelper.deleteAuth().whenComplete(
          () {
            if (context.mounted) context.go('/');
          },
        );
      },
      btnOkColor: Colors.red,
      useRootNavigator: true,
      headerAnimationLoop: false,
    ).show();
  }

  static Future<bool> showExitDialog(BuildContext context) async {
    bool isClose = false;
    await AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.scale,
      title: context.tr("title.exit"),
      desc: context.tr("subtitle.exit"),
      btnCancelText: context.tr("back"),
      btnCancelOnPress: () {},
      btnCancelColor: Theme.of(context).colorScheme.primary,
      btnOkText: context.tr("title.exit"),
      btnOkOnPress: () => isClose = true,
      btnOkColor: Colors.red,
      useRootNavigator: true,
      headerAnimationLoop: false,
    ).show();
    return isClose;
  }

  static Future<Object?> showQrCode(BuildContext context, String input) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "",
      pageBuilder: (context, animation, secondaryAnimation) => Center(
        child: QrImageView(
          backgroundColor: Colors.white,
          data: input,
          version: QrVersions.auto,
          size: 150.0,
        ),
      ),
    );
  }
}
