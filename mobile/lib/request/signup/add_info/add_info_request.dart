import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_info_request.freezed.dart';
part 'add_info_request.g.dart';

@freezed
class AddInfoRequest with _$AddInfoRequest {
  const factory AddInfoRequest({
    required String email,
    required String idNumber,
    required String name,
    required DateTime dateOfBirth,
    required bool isMale,
    required String phoneNumber,
  }) = _AddInfoRequest;

  factory AddInfoRequest.fromJson(Map<String, Object?> json)
  => _$AddInfoRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}