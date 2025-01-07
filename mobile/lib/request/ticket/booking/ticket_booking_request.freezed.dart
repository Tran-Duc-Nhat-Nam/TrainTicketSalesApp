// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketBookingRequest _$TicketBookingRequestFromJson(Map<String, dynamic> json) {
  return _TicketBookingRequest.fromJson(json);
}

/// @nodoc
mixin _$TicketBookingRequest {
  int get accountId => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;
  List<int> get selectedSeatId => throw _privateConstructorUsedError;

  /// Serializes this TicketBookingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketBookingRequestCopyWith<TicketBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookingRequestCopyWith<$Res> {
  factory $TicketBookingRequestCopyWith(TicketBookingRequest value,
          $Res Function(TicketBookingRequest) then) =
      _$TicketBookingRequestCopyWithImpl<$Res, TicketBookingRequest>;
  @useResult
  $Res call({int accountId, int tripId, List<int> selectedSeatId});
}

/// @nodoc
class _$TicketBookingRequestCopyWithImpl<$Res,
        $Val extends TicketBookingRequest>
    implements $TicketBookingRequestCopyWith<$Res> {
  _$TicketBookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? tripId = null,
    Object? selectedSeatId = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedSeatId: null == selectedSeatId
          ? _value.selectedSeatId
          : selectedSeatId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketBookingRequestImplCopyWith<$Res>
    implements $TicketBookingRequestCopyWith<$Res> {
  factory _$$TicketBookingRequestImplCopyWith(_$TicketBookingRequestImpl value,
          $Res Function(_$TicketBookingRequestImpl) then) =
      __$$TicketBookingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountId, int tripId, List<int> selectedSeatId});
}

/// @nodoc
class __$$TicketBookingRequestImplCopyWithImpl<$Res>
    extends _$TicketBookingRequestCopyWithImpl<$Res, _$TicketBookingRequestImpl>
    implements _$$TicketBookingRequestImplCopyWith<$Res> {
  __$$TicketBookingRequestImplCopyWithImpl(_$TicketBookingRequestImpl _value,
      $Res Function(_$TicketBookingRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? tripId = null,
    Object? selectedSeatId = null,
  }) {
    return _then(_$TicketBookingRequestImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
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
class _$TicketBookingRequestImpl implements _TicketBookingRequest {
  const _$TicketBookingRequestImpl(
      {required this.accountId,
      required this.tripId,
      required final List<int> selectedSeatId})
      : _selectedSeatId = selectedSeatId;

  factory _$TicketBookingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketBookingRequestImplFromJson(json);

  @override
  final int accountId;
  @override
  final int tripId;
  final List<int> _selectedSeatId;
  @override
  List<int> get selectedSeatId {
    if (_selectedSeatId is EqualUnmodifiableListView) return _selectedSeatId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSeatId);
  }

  @override
  String toString() {
    return 'TicketBookingRequest(accountId: $accountId, tripId: $tripId, selectedSeatId: $selectedSeatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketBookingRequestImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            const DeepCollectionEquality()
                .equals(other._selectedSeatId, _selectedSeatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, tripId,
      const DeepCollectionEquality().hash(_selectedSeatId));

  /// Create a copy of TicketBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketBookingRequestImplCopyWith<_$TicketBookingRequestImpl>
      get copyWith =>
          __$$TicketBookingRequestImplCopyWithImpl<_$TicketBookingRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketBookingRequestImplToJson(
      this,
    );
  }
}

abstract class _TicketBookingRequest implements TicketBookingRequest {
  const factory _TicketBookingRequest(
      {required final int accountId,
      required final int tripId,
      required final List<int> selectedSeatId}) = _$TicketBookingRequestImpl;

  factory _TicketBookingRequest.fromJson(Map<String, dynamic> json) =
      _$TicketBookingRequestImpl.fromJson;

  @override
  int get accountId;
  @override
  int get tripId;
  @override
  List<int> get selectedSeatId;

  /// Create a copy of TicketBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketBookingRequestImplCopyWith<_$TicketBookingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
