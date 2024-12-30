import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/models/account/status/account_status.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String username,
    required AccountStatus status,
    String? idNumber,
    String? name,
    DateTime? dateOfBirth,
    bool? isMale,
    String? phoneNumber,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
