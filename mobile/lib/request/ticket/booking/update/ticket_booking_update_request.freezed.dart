// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_booking_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketBookingUpdateRequest _$TicketBookingUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _TicketBookingUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$TicketBookingUpdateRequest {
  int get bookingId => throw _privateConstructorUsedError;
  List<int> get selectedSeatId => throw _privateConstructorUsedError;

  /// Serializes this TicketBookingUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketBookingUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketBookingUpdateRequestCopyWith<TicketBookingUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookingUpdateRequestCopyWith<$Res> {
  factory $TicketBookingUpdateRequestCopyWith(TicketBookingUpdateRequest value,
          $Res Function(TicketBookingUpdateRequest) then) =
      _$TicketBookingUpdateRequestCopyWithImpl<$Res,
          TicketBookingUpdateRequest>;
  @useResult
  $Res call({int bookingId, List<int> selectedSeatId});
}

/// @nodoc
class _$TicketBookingUpdateRequestCopyWithImpl<$Res,
        $Val extends TicketBookingUpdateRequest>
    implements $TicketBookingUpdateRequestCopyWith<$Res> {
  _$TicketBookingUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketBookingUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? selectedSeatId = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSeatId: null == selectedSeatId
          ? _value.selectedSeatId
          : selectedSeatId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketBookingUpdateRequestImplCopyWith<$Res>
    implements $TicketBookingUpdateRequestCopyWith<$Res> {
  factory _$$TicketBookingUpdateRequestImplCopyWith(
          _$TicketBookingUpdateRequestImpl value,
          $Res Function(_$TicketBookingUpdateRequestImpl) then) =
      __$$TicketBookingUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bookingId, List<int> selectedSeatId});
}

/// @nodoc
class __$$TicketBookingUpdateRequestImplCopyWithImpl<$Res>
    extends _$TicketBookingUpdateRequestCopyWithImpl<$Res,
        _$TicketBookingUpdateRequestImpl>
    implements _$$TicketBookingUpdateRequestImplCopyWith<$Res> {
  __$$TicketBookingUpdateRequestImplCopyWithImpl(
      _$TicketBookingUpdateRequestImpl _value,
      $Res Function(_$TicketBookingUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketBookingUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? selectedSeatId = null,
  }) {
    return _then(_$TicketBookingUpdateRequestImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSeatId: null == selectedSeatId
          ? _value._selectedSeatId
          : selectedSeatId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketBookingUpdateRequestImpl implements _TicketBookingUpdateRequest {
  const _$TicketBookingUpdateRequestImpl(
      {required this.bookingId, required final List<int> selectedSeatId})
      : _selectedSeatId = selectedSeatId;

  factory _$TicketBookingUpdateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TicketBookingUpdateRequestImplFromJson(json);

  @override
  final int bookingId;
  final List<int> _selectedSeatId;
  @override
  List<int> get selectedSeatId {
    if (_selectedSeatId is EqualUnmodifiableListView) return _selectedSeatId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSeatId);
  }

  @override
  String toString() {
    return 'TicketBookingUpdateRequest(bookingId: $bookingId, selectedSeatId: $selectedSeatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookingUpdateRequestImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            const DeepCollectionEquality()
                .equals(other._selectedSeatId, _selectedSeatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookingId,
      const DeepCollectionEquality().hash(_selectedSeatId));

  /// Create a copy of TicketBookingUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookingUpdateRequestImplCopyWith<_$TicketBookingUpdateRequestImpl>
      get copyWith => __$$TicketBookingUpdateRequestImplCopyWithImpl<
          _$TicketBookingUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketBookingUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _TicketBookingUpdateRequest
    implements TicketBookingUpdateRequest {
  const factory _TicketBookingUpdateRequest(
          {required final int bookingId,
          required final List<int> selectedSeatId}) =
      _$TicketBookingUpdateRequestImpl;

  factory _TicketBookingUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$TicketBookingUpdateRequestImpl.fromJson;

  @override
  int get bookingId;
  @override
  List<int> get selectedSeatId;

  /// Create a copy of TicketBookingUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketBookingUpdateRequestImplCopyWith<_$TicketBookingUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
