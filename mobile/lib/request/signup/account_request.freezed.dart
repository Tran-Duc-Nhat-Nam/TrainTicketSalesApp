// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountRequest _$AccountRequestFromJson(Map<String, dynamic> json) {
  return _AccountRequest.fromJson(json);
}

/// @nodoc
mixin _$AccountRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this AccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountRequestCopyWith<AccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRequestCopyWith<$Res> {
  factory $AccountRequestCopyWith(
          AccountRequest value, $Res Function(AccountRequest) then) =
      _$AccountRequestCopyWithImpl<$Res, AccountRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AccountRequestCopyWithImpl<$Res, $Val extends AccountRequest>
    implements $AccountRequestCopyWith<$Res> {
  _$AccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountRequestImplCopyWith<$Res>
    implements $AccountRequestCopyWith<$Res> {
  factory _$$AccountRequestImplCopyWith(_$AccountRequestImpl value,
          $Res Function(_$AccountRequestImpl) then) =
      __$$AccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AccountRequestImplCopyWithImpl<$Res>
    extends _$AccountRequestCopyWithImpl<$Res, _$AccountRequestImpl>
    implements _$$AccountRequestImplCopyWith<$Res> {
  __$$AccountRequestImplCopyWithImpl(
      _$AccountRequestImpl _value, $Res Function(_$AccountRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AccountRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountRequestImpl implements _AccountRequest {
  const _$AccountRequestImpl({required this.email, required this.password});

  factory _$AccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AccountRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRequestImplCopyWith<_$AccountRequestImpl> get copyWith =>
      __$$AccountRequestImplCopyWithImpl<_$AccountRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountRequestImplToJson(
      this,
    );
  }
}

abstract class _AccountRequest implements AccountRequest {
  const factory _AccountRequest(
      {required final String email,
      required final String password}) = _$AccountRequestImpl;

  factory _AccountRequest.fromJson(Map<String, dynamic> json) =
      _$AccountRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of AccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountRequestImplCopyWith<_$AccountRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}