import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request.freezed.dart';
part 'signup_request.g.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String email,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, Object?> json)
  => _$SignUpRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}