import 'package:flutter/material.dart';

class AppThemeToggleIcon extends StatelessWidget {
  final Animation<double> animation;
  final Color color;

  const AppThemeToggleIcon({
    super.key,
    required this.animation,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            // Sun
            Opacity(
              opacity: 1 - animation.value,
              child: Icon(Icons.wb_sunny, color: color),
            ),
            // Moon
            Opacity(
              opacity: animation.value,
              child: Icon(Icons.nightlight_round, color: color),
            ),
          ],
        );
      },
    );
  }
}