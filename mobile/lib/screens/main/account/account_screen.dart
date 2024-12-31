import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mobile/bloc/account/account_cubit.dart';
import 'package:mobile/common/styles/text_styles.dart';
import 'package:mobile/core/auth/auth_helper.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/toast/dialog.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../widgets/app_screen.dart';
import '../../../widgets/state/app_state.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  AppState<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends AppState<AccountScreen> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountCubit>(
      create: (context) => AccountCubit()..getCustomerInfo(context),
      child: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) => AppScreen(
          title: context.tr("account"),
          isChildScrollView: state.maybeWhen(failed: (message) => true, orElse: () => false),
          child: state.when(
            initial: () => const SizedBox(),
            loading: () => const AppLoadingWidget(),
            noAccount: () => AppErrorWidget(
              message: context.tr("noAccount"),
              onPressed: () => context.push("/login"),
              buttonText: context.tr("title.login"),
            ),
            loaded: (account) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14.5,
                  ),
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              margin: const EdgeInsets.only(right: 12),
                              width: 48,
                              height: 48,
                              child: Center(
                                child: CachedNetworkImage(
                                  imageUrl: "https://picsum.photos/100",
                                  height: 48,
                                  placeholder: (context, url) =>
                                      LoadingAnimationWidget.beat(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    size: 48,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                account.name ??  context.tr("noInfo"),
                                style: AppTextStyles.thinLargeText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            AppDialog.showQrCode(context, account.toString()),
                        child: Icon(
                          Icons.qr_code,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 16,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.phone,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    size: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${context.tr('phone.short')}: ${account.phoneNumber ?? context.tr("noInfo")}',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Divider(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.perm_identity_outlined,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    size: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${context.tr('idNumber.long')}: ${account.idNumber ?? context.tr("noInfo")}',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 16,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.face,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    size: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${context.tr("gender")}: ${context.tr(account.isMale == null ? context.tr("noInfo") : account.isMale! ? "male" : "female").toLowerCase()}',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Divider(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.email,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    size: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '${context.tr('email.short')}: ${account.username}',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 16,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          context.push('/forgetPassword');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.lock,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    context.tr('changePassword'),
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  size: 24,
                                ),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  context.push('/forgetPassword',
                                      extra: 'changePassword');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Divider(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                AuthHelper.deleteAuth().whenComplete(
                                  () {
                                    if (context.mounted) context.go('/login');
                                  },
                                );
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.logout_outlined,
                                      color: Colors.red,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    context.tr('title.logout'),
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            failed: (message) => SmartRefresher(
              controller: _refreshController,
              onRefresh: () => context
                  .read<AccountCubit>()
                  .getCustomerInfo(context)
                  .whenComplete(
                    () => _refreshController.loadComplete(),
                  ),
              child: Center(
                child: Text(context.tr(message)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
