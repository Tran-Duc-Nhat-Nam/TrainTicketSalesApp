import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/car/car.dart';

part 'car_api.g.dart';

@RestApi()
abstract class CarAPI {
  factory CarAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _CarAPI;

  @GET('/cars')
  Future<List<Car>> getAll();

  @GET('/cars')
  Future<List<Car>> getSome(@Queries() Map<String, dynamic> queries);

  @GET('/car/{id}')
  Future<List<Car>> get(@Path('id') int id);
}