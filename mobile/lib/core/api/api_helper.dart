import 'package:dio/dio.dart';
import 'package:mobile/environment.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ApiHelper {
  static Future<Dio> getDioInstance() async {
    return Dio(
      BaseOptions(
        baseUrl: Environment.restApiUrl,
        headers: {
          "Authorization":
              "Bearer ${await SharedPreferencesAsync().getString("accessToken")}"
        },
      ),
    );
  }

  static Future<Dio> getRefreshDioInstance() async {
    return Dio(
      BaseOptions(
        baseUrl: Environment.restApiUrl,
        headers: {
          "Authorization":
          "Bearer ${await SharedPreferencesAsync().getString("refreshToken")}"
        },
      ),
    );
  }
}
