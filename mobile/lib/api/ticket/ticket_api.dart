import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/ticket/ticket.dart';

part 'ticket_api.g.dart';

@RestApi()
abstract class TicketAPI {
  factory TicketAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
      _TicketAPI;

  @GET('/tickets')
  Future<List<Ticket>> getList();

  @GET('/tickets/{id}')
  Future<List<Ticket>> get(@Path('id') int id);

  @POST('/tickets')
  Future<List<Ticket>> create(@Body() Ticket ticket);
}
