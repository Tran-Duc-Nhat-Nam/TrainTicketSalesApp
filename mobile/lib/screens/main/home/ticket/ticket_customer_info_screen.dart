import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/widgets/app_card.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:mobile/widgets/state/app_state.dart';

import '../../../../widgets/app_button.dart';

class TicketCustomerInfoScreen extends StatefulWidget {
  const TicketCustomerInfoScreen({super.key});

  @override
  AppState<TicketCustomerInfoScreen> createState() =>
      _TicketCustomerInfoScreenState();
}

class _TicketCustomerInfoScreenState
    extends AppState<TicketCustomerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: context.tr("customerInfo"),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          spacing: 14,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppCard(
              titleText: context.tr("contactInfo"),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 6, horizontal: 12),
                child: Row(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nguyễn Văn A',
                            style: AppTextStyles.buttonText.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimary,
                            ),
                          ),
                          Text(
                            '0927863998 - VanA@gmail.com',
                            style: AppTextStyles.largeText.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                      ),
                      onPressed: () {
                        // Edit action
                      },
                    ),
                  ],
                ),
              ),
            ),
            AppCard(
              titleText: context.tr("customerInfo"),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 6, horizontal: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.tr("title.adult"),
                          style: AppTextStyles.buttonText.copyWith(
                            color:
                            Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        Text(
                          context.tr("subtitle.adult"),
                          style: AppTextStyles.largeText.copyWith(
                            color:
                            Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
              onPressed: () =>
                  context.push("/ticket/customer-info", extra: 1),
              text: context.tr("continue"),
            ),
          ],
        ),
      ),
    );
  }
}
