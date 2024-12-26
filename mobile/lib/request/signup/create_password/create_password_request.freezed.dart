// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePasswordRequest _$CreatePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _CreatePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePasswordRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this CreatePasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePasswordRequestCopyWith<CreatePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePasswordRequestCopyWith<$Res> {
  factory $CreatePasswordRequestCopyWith(CreatePasswordRequest value,
          $Res Function(CreatePasswordRequest) then) =
      _$CreatePasswordRequestCopyWithImpl<$Res, CreatePasswordRequest>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$CreatePasswordRequestCopyWithImpl<$Res,
        $Val extends CreatePasswordRequest>
    implements $CreatePasswordRequestCopyWith<$Res> {
  _$CreatePasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePasswordRequestImplCopyWith<$Res>
    implements $CreatePasswordRequestCopyWith<$Res> {
  factory _$$CreatePasswordRequestImplCopyWith(
          _$CreatePasswordRequestImpl value,
          $Res Function(_$CreatePasswordRequestImpl) then) =
      __$$CreatePasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$CreatePasswordRequestImplCopyWithImpl<$Res>
    extends _$CreatePasswordRequestCopyWithImpl<$Res,
        _$CreatePasswordRequestImpl>
    implements _$$CreatePasswordRequestImplCopyWith<$Res> {
  __$$CreatePasswordRequestImplCopyWithImpl(_$CreatePasswordRequestImpl _value,
      $Res Function(_$CreatePasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$CreatePasswordRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
class _$CreatePasswordRequestImpl implements _CreatePasswordRequest {
  const _$CreatePasswordRequestImpl(
      {required this.username, required this.password});

  factory _$CreatePasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePasswordRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'CreatePasswordRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePasswordRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of CreatePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePasswordRequestImplCopyWith<_$CreatePasswordRequestImpl>
      get copyWith => __$$CreatePasswordRequestImplCopyWithImpl<
          _$CreatePasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePasswordRequest implements CreatePasswordRequest {
  const factory _CreatePasswordRequest(
      {required final String username,
      required final String password}) = _$CreatePasswordRequestImpl;

  factory _CreatePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$CreatePasswordRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of CreatePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePasswordRequestImplCopyWith<_$CreatePasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}