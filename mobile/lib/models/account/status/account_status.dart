import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_status.freezed.dart';
part 'account_status.g.dart';

@freezed
class AccountStatus with _$AccountStatus {
  const factory AccountStatus({
    required int id,
    required String name,
  }) = _AccountStatus;

  factory AccountStatus.fromJson(Map<String, Object?> json)
  => _$AccountStatusFromJson(json);
}