import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/common/styles/text_styles.dart';

import '../bloc/theme/theme_cubit.dart';
import '../common/styles/theme.dart';
import 'app_big_title.dart';
import 'app_button.dart';
import 'app_screen.dart';
import 'app_theme_toggle_icon.dart';

class AppPublicScreen extends StatefulWidget {
  const AppPublicScreen({
    super.key,
    this.formKey,
    this.children,
    required this.formChildren,
    required this.onPressed,
    required this.title,
    this.subTitle,
    this.footer,
    this.button,
    this.buttonText,
    this.isNoButton = false,
  });

  final GlobalKey<FormBuilderState>? formKey;
  final List<Widget> formChildren;
  final List<Widget>? children;
  final String title;
  final String? subTitle;
  final String? buttonText;
  final Widget? button;
  final Widget? footer;
  final bool isNoButton;
  final void Function()? onPressed;

  @override
  State<AppPublicScreen> createState() => _AppPublicScreenState();
}

class _AppPublicScreenState extends State<AppPublicScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    context.read<ThemeCubit>().state.theme.brightness == Brightness.light
        ? controller.reverse()
        : controller.forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      isAppBar: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ModalRoute.of(context)?.impliesAppBarDismissal ==
                          true
                      ? InkWell(
                          onTap: () => context.pop(),
                          child: Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      : InkWell(
                          onTap: () => context.go("/"),
                          child: Icon(
                            Icons.home,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          context.setLocale(
                            context.locale.toString() == 'en'
                                ? Locale('vi')
                                : Locale('en'),
                          );
                        },
                        child: Text(
                          context.locale.toString().toUpperCase(),
                          style: AppTextStyles.appBarTitle.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      InkWell(
                        overlayColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: AppThemeToggleIcon(
                            animation: animation,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        onTap: () {
                          final themeCubit = context.read<ThemeCubit>();
                          if (themeCubit.state.theme.brightness ==
                              Brightness.light) {
                            themeCubit.changeTheme(appDarkTheme);
                            controller.forward();
                          } else {
                            themeCubit.changeTheme(appTheme);
                            controller.reverse();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FormBuilder(
            key: widget.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Center(
                      child: AppBigTitle(
                        title: widget.title,
                        subTitle: widget.subTitle,
                      ),
                    ),
                  ),
                  ...widget.formChildren,
                  if (!widget.isNoButton)
                    AppButton(
                      onPressed: widget.onPressed,
                      text: widget.buttonText ?? "",
                      child: widget.button,
                    ),
                ],
              ),
            ),
          ),
          if (widget.children != null) ...widget.children!,
          widget.footer ?? const SizedBox(),
        ],
      ),
    );
  }
}
