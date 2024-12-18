import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.message, required this.onPressed, required this.buttonText});

  final String message;
  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.tr(message)),
            AppButton(
                onPressed: onPressed,
                text: buttonText,
                size: Size.small,),
          ],
        ),
      ),
    );
  }
}
