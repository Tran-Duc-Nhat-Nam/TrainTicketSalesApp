import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/bloc/settings/settings_cubit.dart';
import 'package:mobile/core/shared_ref.dart';
import 'package:mobile/widgets/app_error_widget.dart';
import 'package:mobile/widgets/app_loading_widget.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (context) => SettingsCubit()..getBiometrics(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) => AppScreen(
          isDrawer: false,
          isChildScrollView: state.mapOrNull(loaded: (_) => true) ?? false,
          title: context.tr("settings"),
          child: state.when(
            initial: () => const SizedBox(),
            loading: () => AppLoadingWidget(),
            loaded: (isBiometrics) => SettingsList(
              sections: [
                SettingsSection(
                  title: Text(context.tr("generalSettings")),
                  tiles: <SettingsTile>[
                    SettingsTile.navigation(
                      leading: Icon(Icons.language),
                      title: Text(context.tr("language")),
                      value: Text(
                        context.tr(
                          context.locale.languageCode.toString(),
                        ),
                      ),
                      onPressed: (context) => showGeneralDialog(
                        barrierLabel: "language",
                        barrierDismissible: true,
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Dialog(
                          child: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            children: [
                              ListTile(
                                title: Text(context.tr("en")),
                                onTap: () {
                                  context.setLocale(Locale("en"));
                                  context.pop();
                                },
                              ),
                              ListTile(
                                title: Text(context.tr("vi")),
                                onTap: () {
                                  context.setLocale(Locale("vi"));
                                  context.pop();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SettingsTile.switchTile(
                      onToggle: (value) =>
                          context.read<SettingsCubit>().setBiometrics(value),
                      initialValue: isBiometrics,
                      leading: Icon(Icons.fingerprint),
                      title: Text(context.tr("fingerprintAuthentication")),
                    ),
                  ],
                ),
              ],
            ),
            failed: (message) => AppErrorWidget(
              message: message,
              onPressed: () => context.read<SettingsCubit>().getBiometrics(),
              buttonText: context.tr("reload"),
            ),
          ),
        ),
      ),
    );
  }
}
