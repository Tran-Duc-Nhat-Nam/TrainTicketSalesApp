// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountStatus _$AccountStatusFromJson(Map<String, dynamic> json) {
  return _AccountStatus.fromJson(json);
}

/// @nodoc
mixin _$AccountStatus {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AccountStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStatusCopyWith<AccountStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStatusCopyWith<$Res> {
  factory $AccountStatusCopyWith(
          AccountStatus value, $Res Function(AccountStatus) then) =
      _$AccountStatusCopyWithImpl<$Res, AccountStatus>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AccountStatusCopyWithImpl<$Res, $Val extends AccountStatus>
    implements $AccountStatusCopyWith<$Res> {
  _$AccountStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountStatusImplCopyWith<$Res>
    implements $AccountStatusCopyWith<$Res> {
  factory _$$AccountStatusImplCopyWith(
          _$AccountStatusImpl value, $Res Function(_$AccountStatusImpl) then) =
      __$$AccountStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AccountStatusImplCopyWithImpl<$Res>
    extends _$AccountStatusCopyWithImpl<$Res, _$AccountStatusImpl>
    implements _$$AccountStatusImplCopyWith<$Res> {
  __$$AccountStatusImplCopyWithImpl(
      _$AccountStatusImpl _value, $Res Function(_$AccountStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AccountStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountStatusImpl implements _AccountStatus {
  const _$AccountStatusImpl({required this.id, required this.name});

  factory _$AccountStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountStatusImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AccountStatus(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStatusImplCopyWith<_$AccountStatusImpl> get copyWith =>
      __$$AccountStatusImplCopyWithImpl<_$AccountStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountStatusImplToJson(
      this,
    );
  }
}

abstract class _AccountStatus implements AccountStatus {
  const factory _AccountStatus(
      {required final int id,
      required final String name}) = _$AccountStatusImpl;

  factory _AccountStatus.fromJson(Map<String, dynamic> json) =
      _$AccountStatusImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of AccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStatusImplCopyWith<_$AccountStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
