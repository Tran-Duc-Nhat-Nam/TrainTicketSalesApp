import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_password_request.freezed.dart';
part 'create_password_request.g.dart';

@freezed
class CreatePasswordRequest with _$CreatePasswordRequest {
  const factory CreatePasswordRequest({
    required String email,
    required String password,
  }) = _CreatePasswordRequest;

  factory CreatePasswordRequest.fromJson(Map<String, Object?> json)
  => _$CreatePasswordRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}