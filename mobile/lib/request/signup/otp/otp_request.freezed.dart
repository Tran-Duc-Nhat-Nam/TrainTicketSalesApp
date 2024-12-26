// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OTPRequest _$OTPRequestFromJson(Map<String, dynamic> json) {
  return _OTPRequest.fromJson(json);
}

/// @nodoc
mixin _$OTPRequest {
  String get username => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this OTPRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OTPRequestCopyWith<OTPRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPRequestCopyWith<$Res> {
  factory $OTPRequestCopyWith(
          OTPRequest value, $Res Function(OTPRequest) then) =
      _$OTPRequestCopyWithImpl<$Res, OTPRequest>;
  @useResult
  $Res call({String username, String otp});
}

/// @nodoc
class _$OTPRequestCopyWithImpl<$Res, $Val extends OTPRequest>
    implements $OTPRequestCopyWith<$Res> {
  _$OTPRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPRequestImplCopyWith<$Res>
    implements $OTPRequestCopyWith<$Res> {
  factory _$$OTPRequestImplCopyWith(
          _$OTPRequestImpl value, $Res Function(_$OTPRequestImpl) then) =
      __$$OTPRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String otp});
}

/// @nodoc
class __$$OTPRequestImplCopyWithImpl<$Res>
    extends _$OTPRequestCopyWithImpl<$Res, _$OTPRequestImpl>
    implements _$$OTPRequestImplCopyWith<$Res> {
  __$$OTPRequestImplCopyWithImpl(
      _$OTPRequestImpl _value, $Res Function(_$OTPRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? otp = null,
  }) {
    return _then(_$OTPRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPRequestImpl implements _OTPRequest {
  const _$OTPRequestImpl({required this.username, required this.otp});

  factory _$OTPRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String otp;

  @override
  String toString() {
    return 'OTPRequest(username: $username, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, otp);

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPRequestImplCopyWith<_$OTPRequestImpl> get copyWith =>
      __$$OTPRequestImplCopyWithImpl<_$OTPRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPRequestImplToJson(
      this,
    );
  }
}

abstract class _OTPRequest implements OTPRequest {
  const factory _OTPRequest(
      {required final String username,
      required final String otp}) = _$OTPRequestImpl;

  factory _OTPRequest.fromJson(Map<String, dynamic> json) =
      _$OTPRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get otp;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPRequestImplCopyWith<_$OTPRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
