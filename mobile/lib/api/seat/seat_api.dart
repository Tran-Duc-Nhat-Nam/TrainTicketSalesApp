import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../models/seat/seat.dart';

part 'seat_api.g.dart';

@RestApi()
abstract class SeatAPI {
  factory SeatAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _SeatAPI;

  @GET('/seats')
  Future<List<Seat>> getList(@Queries() Map<String, dynamic>? queries);

  @GET('/seats/{id}')
  Future<List<Seat>> get(@Path('id') int id);
}