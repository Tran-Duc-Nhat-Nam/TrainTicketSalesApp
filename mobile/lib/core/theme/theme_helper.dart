import '../shared_ref.dart';

class ThemeHelper {
  static Future<void> setTheme(bool isDark) async {
    await sharedPreferences.setBool('isDark', isDark);
  }

  static Future<bool> getTheme() async {
    return await sharedPreferences.getBool('isDark') == true;
  }
}