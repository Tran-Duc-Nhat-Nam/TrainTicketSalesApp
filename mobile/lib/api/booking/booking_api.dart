import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/booking/booking.dart';
import '../../request/ticket/booking/ticket_booking_request.dart';

part 'booking_api.g.dart';

@RestApi()
abstract class BookingAPI {
  factory BookingAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _BookingAPI;

  @GET('/booking')
  Future<List<Booking>> getList(@Queries() Map<String, dynamic>? queries);

  @GET('/booking/{id}')
  Future<Booking> get(@Path('id') int id);

  @POST('/booking')
  Future<Booking> create(@Body() TicketBookingRequest body);

  @PUT('/booking/pay')
  Future<Map<String, String>> update(@Body() Map<String, dynamic> body);

  @PUT('/booking/pay')
  Future<Map<String, String>> pay(@Body() Map<String, dynamic> body);

  @DELETE('/booking')
  Future<Map<String, String>> delete(@Body() Map<String, dynamic> body);
}
