import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/ticket/ticket.dart';

part 'ticket_api.g.dart';

@RestApi()
abstract class TicketAPI {
  factory TicketAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
      _TicketAPI;

  @GET('/tickets')
  Future<List<Ticket>> getList(@Queries() Map<String, dynamic>? queries);

  @GET('/ticket/{id}')
  Future<Ticket> get(@Path('id') int id);

  @POST('/tickets')
  Future<List<Ticket>> create(@Body() Map<String, dynamic> body);

  @DELETE('/tickets')
  Future<Map<String, String>> delete(@Body() Map<String, dynamic> body);
}
