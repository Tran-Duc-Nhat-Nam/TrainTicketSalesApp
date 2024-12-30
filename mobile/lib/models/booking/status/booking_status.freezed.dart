// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingStatus _$BookingStatusFromJson(Map<String, dynamic> json) {
  return _BookingStatus.fromJson(json);
}

/// @nodoc
mixin _$BookingStatus {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BookingStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingStatusCopyWith<BookingStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStatusCopyWith<$Res> {
  factory $BookingStatusCopyWith(
          BookingStatus value, $Res Function(BookingStatus) then) =
      _$BookingStatusCopyWithImpl<$Res, BookingStatus>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BookingStatusCopyWithImpl<$Res, $Val extends BookingStatus>
    implements $BookingStatusCopyWith<$Res> {
  _$BookingStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingStatus
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
abstract class _$$BookingStatusImplCopyWith<$Res>
    implements $BookingStatusCopyWith<$Res> {
  factory _$$BookingStatusImplCopyWith(
          _$BookingStatusImpl value, $Res Function(_$BookingStatusImpl) then) =
      __$$BookingStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BookingStatusImplCopyWithImpl<$Res>
    extends _$BookingStatusCopyWithImpl<$Res, _$BookingStatusImpl>
    implements _$$BookingStatusImplCopyWith<$Res> {
  __$$BookingStatusImplCopyWithImpl(
      _$BookingStatusImpl _value, $Res Function(_$BookingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BookingStatusImpl(
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
class _$BookingStatusImpl implements _BookingStatus {
  const _$BookingStatusImpl({required this.id, required this.name});

  factory _$BookingStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingStatusImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BookingStatus(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BookingStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStatusImplCopyWith<_$BookingStatusImpl> get copyWith =>
      __$$BookingStatusImplCopyWithImpl<_$BookingStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingStatusImplToJson(
      this,
    );
  }
}

abstract class _BookingStatus implements BookingStatus {
  const factory _BookingStatus(
      {required final int id,
      required final String name}) = _$BookingStatusImpl;

  factory _BookingStatus.fromJson(Map<String, dynamic> json) =
      _$BookingStatusImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of BookingStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingStatusImplCopyWith<_$BookingStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
