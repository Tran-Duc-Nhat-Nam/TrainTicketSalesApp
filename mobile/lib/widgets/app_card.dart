import 'package:flutter/material.dart';
import 'package:mobile/common/styles/text_styles.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.titleText,
    this.suffixText,
    this.footer,
    this.title,
    this.suffix,
  });

  final Widget? title;
  final String? titleText;
  final Widget? suffix;
  final String? suffixText;
  final Widget child;
  final Widget? footer;

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: title ??
          Text(
            titleText ?? '',
            style: AppTextStyles.mediumText.copyWith(color: Colors.white),
            overflow: TextOverflow.ellipsis,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).colorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: suffix != null || suffixText != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: _buildTitle(),
                      ),
                      suffix ??
                          Flexible(
                            flex: 0,
                            fit: FlexFit.loose,
                            child: Text(
                              suffixText ?? '',
                              style: AppTextStyles.mediumText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                    ],
                  )
                : _buildTitle(),
          ),
          child,
          if (footer != null)
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              child: footer,
            ),
        ],
      ),
    );
  }
}
