import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/customer/customer.dart';

part 'customer_api.g.dart';

@RestApi()
abstract class CustomerAPI {
  factory CustomerAPI(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
  _CustomerAPI;

  @GET('/customers')
  Future<List<Customer>> getAll();

  @GET('/customer/{id}')
  Future<Customer> get(@Path('id') int id);
}
