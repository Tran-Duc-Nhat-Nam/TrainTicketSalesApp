import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:mobile/api/account/account_api.dart';
import 'package:mobile/core/api/api_helper.dart';

import '../shared_ref.dart';

class AuthHelper {
  static Future<void> setAuth(
      String accessToken, String refreshToken, bool isRemember) async {
    int id = JwtDecoder.decode(accessToken)['sub'];
    int accessTokenTime = JwtDecoder.decode(accessToken)['exp'];
    int refreshTokenTime = JwtDecoder.decode(refreshToken)['exp'];
    await sharedPreferences.setString("accessToken", accessToken);
    await sharedPreferences.setString("refreshToken", refreshToken);
    await sharedPreferences.setInt("accessTokenTime", accessTokenTime);
    await sharedPreferences.setInt("refreshTokenTime", refreshTokenTime);
    await sharedPreferences.setInt("userId", id);
    await sharedPreferences.setBool("isRemember", isRemember);
  }

  static Future<void> deleteAuth() async {
    await sharedPreferences.remove("accessToken");
    await sharedPreferences.remove("refreshToken");
    await sharedPreferences.remove("expireDate");
    await sharedPreferences.remove("userId");
    await sharedPreferences.remove("isRemember");
  }

  static Future<bool> checkExpire(String name) async {
    int time = (await sharedPreferences.getInt(name)) ?? 0;
    DateTime date = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    return date.isAfter(DateTime.now());
  }

  static Future<bool?> getAuth() async {
    log("Checking", name: "Auth");
    if (await checkExpire('accessTokenTime')) {
      log("User ID: ${(await sharedPreferences.getInt('userId')).toString()}", name: "Auth");
      return (await sharedPreferences.getInt('userId')) != null;
    } else {
      if (await checkExpire('refreshTokenTime')) {
        try {
          Map<String, String> value =
              await AccountAPI(await ApiHelper.getRefreshDioInstance())
                  .refresh();
          if (value['accessToken'] != null) {
            await sharedPreferences.setString(
                "accessToken", value['accessToken']!);
            int expireDate = JwtDecoder.decode(value['accessToken']!)['exp'];
            await sharedPreferences.setInt("accessTokenTime", expireDate);
            log("Refresh", name: "Auth");
            return true;
          }
        } catch (error) {
          log(
              error is DioException
                  ? error.message ?? "Unexpected error"
                  : error.toString(),
              name: "Auth");
        }
      }
    }
    log("Error", name: "Auth");
    return null;
  }

  static Future<int?> getUserId() async {
    return await sharedPreferences.getInt('userId');
  }
}
