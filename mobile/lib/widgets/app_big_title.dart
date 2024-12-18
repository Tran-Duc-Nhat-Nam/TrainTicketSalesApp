import 'package:flutter/material.dart';

import '../common/styles/text_styles.dart';

class AppBigTitle extends StatelessWidget {
  const AppBigTitle({super.key, required this.title, this.subTitle});

  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.bigTitle,
        ),
        if (subTitle != null)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              subTitle!,
              style: AppTextStyles.secondaryText,
            ),
          ),
        const SizedBox(height: 45),
      ],
    );
  }
}
