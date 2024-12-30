import 'package:dio/dio.dart';
import 'package:mobile/request/signup/add_info/add_info_request.dart';
import 'package:mobile/request/signup/create_password/create_password_request.dart';
import 'package:mobile/request/signup/otp/otp_request.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/account/account.dart';
import '../../request/signup/account_request.dart';

part 'account_api.g.dart';

@RestApi()
abstract class AccountAPI {
  factory AccountAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _AccountAPI;

  @GET('/account/{id}')
  Future<Account> get(@Path('id') int id);

  @POST('/signup')
  Future<Map<String, String>> signUp(@Body() AccountRequest request);

  @POST('/signup/otp')
  Future<Map<String, String>> submitOtp(@Body() OTPRequest request);

  @POST('/signup/password')
  Future<Map<String, String>> createPassword(@Body() CreatePasswordRequest request);

  @POST('/signup/info')
  Future<Map<String, String>> addInfo(@Body() AddInfoRequest request);

  @POST('/login')
  Future<Map<String, String>> login(@Body() AccountRequest request);

  @GET('/refresh')
  Future<Map<String, String>> refresh();
}
