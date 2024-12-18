import 'package:flutter/material.dart';
import 'package:mobile/common/styles/text_styles.dart';

class PaddingPreset {
  const PaddingPreset(
      {required this.top,
      required this.bottom,
      required this.left,
      required this.right});
  final double top, bottom, left, right;
}

enum Size {
  large(PaddingPreset(top: 16, bottom: 16, left: 24, right: 24)),
  medium(PaddingPreset(top: 8, bottom: 8, left: 14, right: 14)),
  small(PaddingPreset(top: 4, bottom: 4, left: 6, right: 6));

  const Size(this.value);
  final PaddingPreset value;
}

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.onPressed,
      this.text = '',
      this.child,
      this.fitContent = false,
      this.size = Size.large,});

  final void Function()? onPressed;
  final String text;
  final Widget? child;
  final bool fitContent;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      disabledColor: Theme.of(context).colorScheme.primary,
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.symmetric(
        vertical: size.value.top,
        horizontal: size.value.left,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      minWidth: fitContent ? null : double.infinity,
      child: child ??
          Text(
            text,
            style: AppTextStyles.buttonText.copyWith(color: Colors.white),
          ),
    );
  }
}
