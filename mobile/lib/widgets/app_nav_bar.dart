import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/auth/auth_helper.dart';
import 'package:mobile/widgets/toast/dialog.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../common/styles/text_styles.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  bool isAuth = false;

  Future<void> getAuth() async {
    isAuth = await AuthHelper.getAuth() == true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getAuth();
    return PersistentTabView.router(
      tabs: [
        PersistentRouterTabConfig(
          item: ItemConfig(
            iconSize: 18,
            icon: SvgPicture.asset(
              'assets/icons/house.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimaryContainer,
                BlendMode.srcIn,
              ),
            ),
            title: context.tr('home'),
            textStyle: AppTextStyles.labelText,
            activeForegroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            inactiveIcon: SvgPicture.asset(
              'assets/icons/house.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        PersistentRouterTabConfig(
          item: ItemConfig(
            iconSize: 18,
            icon: SvgPicture.asset(
              'assets/icons/ballot-check.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimaryContainer,
                BlendMode.srcIn,
              ),
            ),
            title: context.tr('activity'),
            textStyle: AppTextStyles.labelText,
            activeForegroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            inactiveIcon: SvgPicture.asset(
              'assets/icons/ballot-check.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        if (isAuth)
          PersistentRouterTabConfig(
            item: ItemConfig(
              iconSize: 18,
              icon: SvgPicture.asset(
                'assets/icons/user-gear.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn,
                ),
              ),
              title: context.tr('account'),
              textStyle: AppTextStyles.labelText,
              activeForegroundColor:
                  Theme.of(context).colorScheme.onPrimaryContainer,
              inactiveIcon: SvgPicture.asset(
                'assets/icons/user-gear.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
        ),
      ),
      navigationShell: widget.navigationShell,
      onTabChanged: (value) => AppDialog.checkAuth(context),
    );
  }
}
