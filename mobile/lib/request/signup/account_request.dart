import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_request.freezed.dart';
part 'account_request.g.dart';

@freezed
class AccountRequest with _$AccountRequest {
  const factory AccountRequest({
    required String email,
    required String password,
  }) = _AccountRequest;

  factory AccountRequest.fromJson(Map<String, Object?> json)
  => _$AccountRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}