import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../models/station/station.dart';

part 'station_api.g.dart';

@RestApi()
abstract class StationAPI {
  factory StationAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _StationAPI;

  @GET('/stations')
  Future<List<Station>> getAll();

  @GET('/stations/{id}')
  Future<List<Station>> get(@Path('id') int id);
}
