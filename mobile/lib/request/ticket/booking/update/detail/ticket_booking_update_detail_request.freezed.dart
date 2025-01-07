// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_booking_update_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketBookingUpdateDetailRequest _$TicketBookingUpdateDetailRequestFromJson(
    Map<String, dynamic> json) {
  return _TicketBookingUpdateDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$TicketBookingUpdateDetailRequest {
  int get seatId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;

  /// Serializes this TicketBookingUpdateDetailRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketBookingUpdateDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketBookingUpdateDetailRequestCopyWith<TicketBookingUpdateDetailRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookingUpdateDetailRequestCopyWith<$Res> {
  factory $TicketBookingUpdateDetailRequestCopyWith(
          TicketBookingUpdateDetailRequest value,
          $Res Function(TicketBookingUpdateDetailRequest) then) =
      _$TicketBookingUpdateDetailRequestCopyWithImpl<$Res,
          TicketBookingUpdateDetailRequest>;
  @useResult
  $Res call(
      {int seatId,
      String name,
      String idNumber,
      DateTime dateOfBirth,
      bool isMale});
}

/// @nodoc
class _$TicketBookingUpdateDetailRequestCopyWithImpl<$Res,
        $Val extends TicketBookingUpdateDetailRequest>
    implements $TicketBookingUpdateDetailRequestCopyWith<$Res> {
  _$TicketBookingUpdateDetailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketBookingUpdateDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? name = null,
    Object? idNumber = null,
    Object? dateOfBirth = null,
    Object? isMale = null,
  }) {
    return _then(_value.copyWith(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketBookingUpdateDetailRequestImplCopyWith<$Res>
    implements $TicketBookingUpdateDetailRequestCopyWith<$Res> {
  factory _$$TicketBookingUpdateDetailRequestImplCopyWith(
          _$TicketBookingUpdateDetailRequestImpl value,
          $Res Function(_$TicketBookingUpdateDetailRequestImpl) then) =
      __$$TicketBookingUpdateDetailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int seatId,
      String name,
      String idNumber,
      DateTime dateOfBirth,
      bool isMale});
}

/// @nodoc
class __$$TicketBookingUpdateDetailRequestImplCopyWithImpl<$Res>
    extends _$TicketBookingUpdateDetailRequestCopyWithImpl<$Res,
        _$TicketBookingUpdateDetailRequestImpl>
    implements _$$TicketBookingUpdateDetailRequestImplCopyWith<$Res> {
  __$$TicketBookingUpdateDetailRequestImplCopyWithImpl(
      _$TicketBookingUpdateDetailRequestImpl _value,
      $Res Function(_$TicketBookingUpdateDetailRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketBookingUpdateDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? name = null,
    Object? idNumber = null,
    Object? dateOfBirth = null,
    Object? isMale = null,
  }) {
    return _then(_$TicketBookingUpdateDetailRequestImpl(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketBookingUpdateDetailRequestImpl
    implements _TicketBookingUpdateDetailRequest {
  const _$TicketBookingUpdateDetailRequestImpl(
      {required this.seatId,
      required this.name,
      required this.idNumber,
      required this.dateOfBirth,
      required this.isMale});

  factory _$TicketBookingUpdateDetailRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TicketBookingUpdateDetailRequestImplFromJson(json);

  @override
  final int seatId;
  @override
  final String name;
  @override
  final String idNumber;
  @override
  final DateTime dateOfBirth;
  @override
  final bool isMale;

  @override
  String toString() {
    return 'TicketBookingUpdateDetailRequest(seatId: $seatId, name: $name, idNumber: $idNumber, dateOfBirth: $dateOfBirth, isMale: $isMale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookingUpdateDetailRequestImpl &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.isMale, isMale) || other.isMale == isMale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, seatId, name, idNumber, dateOfBirth, isMale);

  /// Create a copy of TicketBookingUpdateDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookingUpdateDetailRequestImplCopyWith<
          _$TicketBookingUpdateDetailRequestImpl>
      get copyWith => __$$TicketBookingUpdateDetailRequestImplCopyWithImpl<
          _$TicketBookingUpdateDetailRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketBookingUpdateDetailRequestImplToJson(
      this,
    );
  }
}

abstract class _TicketBookingUpdateDetailRequest
    implements TicketBookingUpdateDetailRequest {
  const factory _TicketBookingUpdateDetailRequest(
      {required final int seatId,
      required final String name,
      required final String idNumber,
      required final DateTime dateOfBirth,
      required final bool isMale}) = _$TicketBookingUpdateDetailRequestImpl;

  factory _TicketBookingUpdateDetailRequest.fromJson(
          Map<String, dynamic> json) =
      _$TicketBookingUpdateDetailRequestImpl.fromJson;

  @override
  int get seatId;
  @override
  String get name;
  @override
  String get idNumber;
  @override
  DateTime get dateOfBirth;
  @override
  bool get isMale;

  /// Create a copy of TicketBookingUpdateDetailRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketBookingUpdateDetailRequestImplCopyWith<
          _$TicketBookingUpdateDetailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
