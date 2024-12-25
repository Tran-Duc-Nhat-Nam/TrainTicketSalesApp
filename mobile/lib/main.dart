import 'dart:io';
import 'dart:isolate';
import 'dart:developer';
import 'dart:ui';

import 'package:background_locator_2/background_locator.dart';
import 'package:background_locator_2/location_dto.dart';
import 'package:background_locator_2/settings/android_settings.dart';
import 'package:background_locator_2/settings/ios_settings.dart';
import 'package:background_locator_2/settings/locator_settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart' as l;
import 'package:mobile/api/customer/customer_api.dart';
import 'package:mobile/bloc/theme/theme_cubit.dart';
import 'package:mobile/common/styles/colors.dart';
import 'package:mobile/core/api/api_helper.dart';
import 'package:mobile/routes.dart';
import 'package:local_auth/local_auth.dart';
import 'package:permission_handler/permission_handler.dart';

const String _isolateName = "LocatorIsolate";
ReceivePort port = ReceivePort();
const Map<String, dynamic> data = {};

Future<void> initPlatformState() async {
  await BackgroundLocator.initialize();
}

@pragma('vm:entry-point')
void callback(LocationDto locationDto) async {
  final SendPort? send = IsolateNameServer.lookupPortByName(_isolateName);
  log("Callback", name: "Background locator");
  CustomerAPI(await ApiHelper.getDioInstance())
      .get((locationDto.longitude * 1000000).toInt());
  send?.send(locationDto.toJson());
}

//Optional
@pragma('vm:entry-point')
void initCallback(dynamic _) {
  log("Init", name: "Background locator");
}

//Optional
@pragma('vm:entry-point')
void notificationCallback() {
  log("Notify", name: "Background locator");
}

void startLocationService() {
  BackgroundLocator.registerLocationUpdate(
    callback,
    initCallback: initCallback,
    initDataCallback: data,
    autoStop: false,
    iosSettings:
        IOSSettings(accuracy: LocationAccuracy.NAVIGATION, distanceFilter: 0),
    androidSettings: AndroidSettings(
      accuracy: LocationAccuracy.NAVIGATION,
      interval: 5,
      distanceFilter: 0,
      androidNotificationSettings: AndroidNotificationSettings(
        notificationChannelName: 'Location tracking',
        notificationTitle: 'Start Location Tracking',
        notificationMsg: 'Track location in background',
        notificationBigMsg:
            'Background location is on to keep the app up-tp-date with your location. This is required for main features to work properly when the app is not running.',
        notificationIcon: '',
        notificationIconColor: Colors.grey,
        notificationTapCallback: notificationCallback,
      ),
    ),
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Permission.location.onDeniedCallback(() {}).onGrantedCallback(() async {
    log("Permission granted", name: "Background locator");
    // if (Platform.isAndroid) {
    //   IsolateNameServer.registerPortWithName(port.sendPort, _isolateName);
    //   port.listen((dynamic data) {
    //     log("Port listened", name: "Background locator");
    //     log("Data: ${data.toString()}", name: "Background locator");
    //   });
    //   initPlatformState();
    //   startLocationService();
    // } else if (Platform.isIOS) {
    //   l.Location location = l.Location();
    //   location.enableBackgroundMode(enable: true);
    //   location.onLocationChanged.listen((l.LocationData currentLocation) async {
    //     log(currentLocation.longitude.toString(), name: "Background locator");
    //     CustomerAPI(await ApiHelper.getDioInstance()).get(((currentLocation.longitude ?? 0) * 1000000).toInt());
    //   });
    // }
  }).onPermanentlyDeniedCallback(() {
    log("Permission granted", name: "Background locator");
  }).onRestrictedCallback(() {
    log("Restricted permission granted", name: "Background locator");
  }).onLimitedCallback(() {
    log("Limited permission granted", name: "Background locator");
  }).onProvisionalCallback(() {
    log("Provisional permission granted", name: "Background locator");
  }).request();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('vi')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
