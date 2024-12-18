import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/trip/trip.dart';

part 'trip_api.g.dart';

@RestApi()
abstract class TripAPI {
  factory TripAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _TripAPI;

  @GET('/trips')
  Future<List<Trip>> getAll();

  @GET('/trips')
  Future<List<Trip>> getSome(@Queries() Map<String, dynamic> queries);

  @GET('/trip/{id}')
  Future<List<Trip>> get(@Path('id') int id);
}
