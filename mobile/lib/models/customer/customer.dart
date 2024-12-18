import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required int id,
    required String idNumber,
    required String name,
    required int age,
    required bool isMale,
    required String phoneNumber,
  }) = _Customer;

  factory Customer.fromJson(Map<String, Object?> json)
  => _$CustomerFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}