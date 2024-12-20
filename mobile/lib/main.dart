import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:mobile/api/customer/customer_api.dart';
import 'package:mobile/bloc/theme/theme_cubit.dart';
import 'package:mobile/common/styles/colors.dart';
import 'package:mobile/core/api/api_helper.dart';
import 'package:mobile/routes.dart';
import 'package:local_auth/local_auth.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Permission.location.onDeniedCallback(() {
  }).onGrantedCallback(() async {
    print("Permission granted");
    Location location = Location();
    location.enableBackgroundMode(enable: true);
    location.onLocationChanged.listen((LocationData currentLocation) async {
      print(currentLocation.longitude);
      CustomerAPI(await ApiHelper.getDioInstance()).get(((currentLocation.longitude ?? 0) * 1000000).toInt());
    });
  }).onPermanentlyDeniedCallback(() {
    print("Permission denied");
  }).onRestrictedCallback(() {
    print("Permission R");
  }).onLimitedCallback(() {
    print("Permission L");
  }).onProvisionalCallback(() {
    print("Permission P");
  }).request();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('vi')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit()..loadTheme(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => state.when(
          initial: (theme) => MaterialApp.router(
            title: 'App bán vé tàu',
            theme: theme,
            darkTheme: theme,
            color: AppColors.primaryColor,
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          ),
        ),
      ),
    );
  }
}
