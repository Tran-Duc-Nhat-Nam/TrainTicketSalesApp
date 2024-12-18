import 'package:flutter/material.dart';
import 'package:mobile/common/styles/text_styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.onPressed, this.text,
      this.child,
      this.underline = false});

  final void Function() onPressed;
  final String? text;
  final bool? underline;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: child ??
          Text(
            text ?? "",
            style: underline!
                ? AppTextStyles.underlineTextButtonText
                : AppTextStyles.textButtonText,
          ),
    );
  }
}
