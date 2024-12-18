// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Seat _$SeatFromJson(Map<String, dynamic> json) {
  return _Seat.fromJson(json);
}

/// @nodoc
mixin _$Seat {
  int get id => throw _privateConstructorUsedError;
  SeatType get seatType => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  String get col => throw _privateConstructorUsedError;

  /// Serializes this Seat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Seat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res, Seat>;
  @useResult
  $Res call({int id, SeatType seatType, int row, String col});

  $SeatTypeCopyWith<$Res> get seatType;
}

/// @nodoc
class _$SeatCopyWithImpl<$Res, $Val extends Seat>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Seat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? seatType = null,
    Object? row = null,
    Object? col = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      seatType: null == seatType
          ? _value.seatType
          : seatType // ignore: cast_nullable_to_non_nullable
              as SeatType,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: null == col
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Seat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeatTypeCopyWith<$Res> get seatType {
    return $SeatTypeCopyWith<$Res>(_value.seatType, (value) {
      return _then(_value.copyWith(seatType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeatImplCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$$SeatImplCopyWith(
          _$SeatImpl value, $Res Function(_$SeatImpl) then) =
      __$$SeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, SeatType seatType, int row, String col});

  @override
  $SeatTypeCopyWith<$Res> get seatType;
}

/// @nodoc
class __$$SeatImplCopyWithImpl<$Res>
    extends _$SeatCopyWithImpl<$Res, _$SeatImpl>
    implements _$$SeatImplCopyWith<$Res> {
  __$$SeatImplCopyWithImpl(_$SeatImpl _value, $Res Function(_$SeatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Seat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? seatType = null,
    Object? row = null,
    Object? col = null,
  }) {
    return _then(_$SeatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      seatType: null == seatType
          ? _value.seatType
          : seatType // ignore: cast_nullable_to_non_nullable
              as SeatType,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: null == col
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatImpl implements _Seat {
  const _$SeatImpl(
      {this.id = -1,
      this.seatType = const SeatType(),
      this.row = -1,
      this.col = ""});

  factory _$SeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final SeatType seatType;
  @override
  @JsonKey()
  final int row;
  @override
  @JsonKey()
  final String col;

  @override
  String toString() {
    return 'Seat(id: $id, seatType: $seatType, row: $row, col: $col)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.seatType, seatType) ||
                other.seatType == seatType) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, seatType, row, col);

  /// Create a copy of Seat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      __$$SeatImplCopyWithImpl<_$SeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatImplToJson(
      this,
    );
  }
}

abstract class _Seat implements Seat {
  const factory _Seat(
      {final int id,
      final SeatType seatType,
      final int row,
      final String col}) = _$SeatImpl;

  factory _Seat.fromJson(Map<String, dynamic> json) = _$SeatImpl.fromJson;

  @override
  int get id;
  @override
  SeatType get seatType;
  @override
  int get row;
  @override
  String get col;

  /// Create a copy of Seat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
