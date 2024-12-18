import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/widgets/toast/dialog.dart';

import 'dart:math' as math;

import '../bloc/theme/theme_cubit.dart';
import '../common/styles/text_styles.dart';
import '../common/styles/theme.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.onPrimaryContainer,
                  Theme.of(context).colorScheme.primary
                ],
                begin: Alignment(-1.0, 0.0),
                end: Alignment(1.0, 0.0),
                stops: [0.0, 1.0],
                transform: GradientRotation(math.pi / 4),
              ),
            ),
            child: Center(
              child: Text(
                context.tr("drawer"),
                style: AppTextStyles.extraLargeText.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(context.tr("changeLanguage")),
            leading: Text(
              context.locale.toString().toUpperCase(),
              style: AppTextStyles.appBarTitle,
            ),
            onTap: () {
              context.setLocale(
                context.locale.toString() == 'en'
                    ? Locale('vi')
                    : Locale('en'),
              );
            },
          ),
          ListTile(
            title: Text(context.tr("changeTheme")),
            leading: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, anim) => RotationTransition(
                turns: child.key == ValueKey('icon1')
                    ? Tween<double>(begin: 1, end: 0.75).animate(anim)
                    : Tween<double>(begin: 0.75, end: 1).animate(anim),
                child: FadeTransition(opacity: anim, child: child),
              ),
              child:
              context.read<ThemeCubit>().state.theme.brightness ==
                  Brightness.light
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.dark_mode),
            ),
            onTap: () {
              final themeCubit = context.read<ThemeCubit>();
              if (themeCubit.state.theme.brightness ==
                  Brightness.light) {
                themeCubit.changeTheme(appDarkTheme);
              } else {
                themeCubit.changeTheme(appTheme);
              }
            },
          ),
          ListTile(
            onTap: () {
              context.push('/settings');
            },
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              context.tr('settings'),
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              AppDialog.showLogoutDialog(context);
            },
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.red,
            ),
            title: Text(
              context.tr('logout'),
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}