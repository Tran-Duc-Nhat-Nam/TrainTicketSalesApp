import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/shared_ref.dart';
import 'package:mobile/widgets/app_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isBiometrics = false;

  @override
  void initState() {
    super.initState();
    getBiometrics();
  }

  Future<void> getBiometrics() async {
    isBiometrics = await sharedPreferences.getBool("isBiometrics") ?? false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      isDrawer: false,
      title: context.tr("settings"),
      child: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text(context.tr("language")),
                value: Text(context.tr(context.locale.languageCode.toString())),
                onPressed: (context) => showGeneralDialog(
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
                onToggle: (value) async {
                  await sharedPreferences.setBool("isBiometrics", value);
                  setState(() {
                    isBiometrics = value;
                  });
                },
                initialValue: isBiometrics,
                leading: Icon(Icons.fingerprint),
                title: Text(context.tr("fingerprintAuthentication")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
