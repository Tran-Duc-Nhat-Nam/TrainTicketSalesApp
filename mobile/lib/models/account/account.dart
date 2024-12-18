import 'package:freezed_annotation/freezed_annotation.dart';

import '../customer/customer.dart';
part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String username,
    required String password,
    Customer? customer,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json)
  => _$AccountFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}