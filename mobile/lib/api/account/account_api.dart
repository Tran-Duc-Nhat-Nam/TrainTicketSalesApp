import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/account/account.dart';

part 'account_api.g.dart';

@RestApi()
abstract class AccountAPI {
  factory AccountAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _AccountAPI;

  @POST('/signup')
  Future<Map<String, String>> signUp(@Body() Account account);

  @POST('/signup/otp')
  Future<Map<String, String>> otp(@Body() Map<String, String> otp);

  @POST('/login')
  Future<Map<String, String>> login(@Body() Account account);

  @GET('/refresh')
  Future<Map<String, String>> refresh();
}
