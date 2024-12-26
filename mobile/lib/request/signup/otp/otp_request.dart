import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_request.freezed.dart';
part 'otp_request.g.dart';

@freezed
class OTPRequest with _$OTPRequest {
  const factory OTPRequest({
    required String username,
    required String otp,
  }) = _OTPRequest;

  factory OTPRequest.fromJson(Map<String, Object?> json)
  => _$OTPRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}