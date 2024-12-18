// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
mixin _$Ticket {
  int get id => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  Trip get trip => throw _privateConstructorUsedError;
  Seat get seat => throw _privateConstructorUsedError;
  Trip? get returnTrip => throw _privateConstructorUsedError;
  Seat? get returnSeat => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Serializes this Ticket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
  @useResult
  $Res call(
      {int id,
      Customer customer,
      Trip trip,
      Seat seat,
      Trip? returnTrip,
      Seat? returnSeat,
      int price});

  $CustomerCopyWith<$Res> get customer;
  $TripCopyWith<$Res> get trip;
  $SeatCopyWith<$Res> get seat;
  $TripCopyWith<$Res>? get returnTrip;
  $SeatCopyWith<$Res>? get returnSeat;
}

/// @nodoc
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? trip = null,
    Object? seat = null,
    Object? returnTrip = freezed,
    Object? returnSeat = freezed,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as Seat,
      returnTrip: freezed == returnTrip
          ? _value.returnTrip
          : returnTrip // ignore: cast_nullable_to_non_nullable
              as Trip?,
      returnSeat: freezed == returnSeat
          ? _value.returnSeat
          : returnSeat // ignore: cast_nullable_to_non_nullable
              as Seat?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeatCopyWith<$Res> get seat {
    return $SeatCopyWith<$Res>(_value.seat, (value) {
      return _then(_value.copyWith(seat: value) as $Val);
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res>? get returnTrip {
    if (_value.returnTrip == null) {
      return null;
    }

    return $TripCopyWith<$Res>(_value.returnTrip!, (value) {
      return _then(_value.copyWith(returnTrip: value) as $Val);
    });
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeatCopyWith<$Res>? get returnSeat {
    if (_value.returnSeat == null) {
      return null;
    }

    return $SeatCopyWith<$Res>(_value.returnSeat!, (value) {
      return _then(_value.copyWith(returnSeat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketImplCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$$TicketImplCopyWith(
          _$TicketImpl value, $Res Function(_$TicketImpl) then) =
      __$$TicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Customer customer,
      Trip trip,
      Seat seat,
      Trip? returnTrip,
      Seat? returnSeat,
      int price});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $TripCopyWith<$Res> get trip;
  @override
  $SeatCopyWith<$Res> get seat;
  @override
  $TripCopyWith<$Res>? get returnTrip;
  @override
  $SeatCopyWith<$Res>? get returnSeat;
}

/// @nodoc
class __$$TicketImplCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$TicketImpl>
    implements _$$TicketImplCopyWith<$Res> {
  __$$TicketImplCopyWithImpl(
      _$TicketImpl _value, $Res Function(_$TicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? trip = null,
    Object? seat = null,
    Object? returnTrip = freezed,
    Object? returnSeat = freezed,
    Object? price = null,
  }) {
    return _then(_$TicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as Seat,
      returnTrip: freezed == returnTrip
          ? _value.returnTrip
          : returnTrip // ignore: cast_nullable_to_non_nullable
              as Trip?,
      returnSeat: freezed == returnSeat
          ? _value.returnSeat
          : returnSeat // ignore: cast_nullable_to_non_nullable
              as Seat?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketImpl implements _Ticket {
  const _$TicketImpl(
      {required this.id,
      required this.customer,
      required this.trip,
      required this.seat,
      required this.returnTrip,
      required this.returnSeat,
      required this.price});

  factory _$TicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketImplFromJson(json);

  @override
  final int id;
  @override
  final Customer customer;
  @override
  final Trip trip;
  @override
  final Seat seat;
  @override
  final Trip? returnTrip;
  @override
  final Seat? returnSeat;
  @override
  final int price;

  @override
  String toString() {
    return 'Ticket(id: $id, customer: $customer, trip: $trip, seat: $seat, returnTrip: $returnTrip, returnSeat: $returnSeat, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.returnTrip, returnTrip) ||
                other.returnTrip == returnTrip) &&
            (identical(other.returnSeat, returnSeat) ||
                other.returnSeat == returnSeat) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, customer, trip, seat, returnTrip, returnSeat, price);

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      __$$TicketImplCopyWithImpl<_$TicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketImplToJson(
      this,
    );
  }
}

abstract class _Ticket implements Ticket {
  const factory _Ticket(
      {required final int id,
      required final Customer customer,
      required final Trip trip,
      required final Seat seat,
      required final Trip? returnTrip,
      required final Seat? returnSeat,
      required final int price}) = _$TicketImpl;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$TicketImpl.fromJson;

  @override
  int get id;
  @override
  Customer get customer;
  @override
  Trip get trip;
  @override
  Seat get seat;
  @override
  Trip? get returnTrip;
  @override
  Seat? get returnSeat;
  @override
  int get price;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
