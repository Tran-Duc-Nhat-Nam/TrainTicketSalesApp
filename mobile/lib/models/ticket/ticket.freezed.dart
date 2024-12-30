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
  Booking get booking => throw _privateConstructorUsedError;
  Trip get trip => throw _privateConstructorUsedError;
  Seat get seat => throw _privateConstructorUsedError;
  Trip? get returnTrip => throw _privateConstructorUsedError;
  Seat? get returnSeat => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

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
      Booking booking,
      Trip trip,
      Seat seat,
      Trip? returnTrip,
      Seat? returnSeat,
      String name,
      String idNumber,
      DateTime dateOfBirth,
      bool isMale,
      int price,
      String note});

  $BookingCopyWith<$Res> get booking;
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
    Object? booking = null,
    Object? trip = null,
    Object? seat = null,
    Object? returnTrip = freezed,
    Object? returnSeat = freezed,
    Object? name = null,
    Object? idNumber = null,
    Object? dateOfBirth = null,
    Object? isMale = null,
    Object? price = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingCopyWith<$Res> get booking {
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
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
      Booking booking,
      Trip trip,
      Seat seat,
      Trip? returnTrip,
      Seat? returnSeat,
      String name,
      String idNumber,
      DateTime dateOfBirth,
      bool isMale,
      int price,
      String note});

  @override
  $BookingCopyWith<$Res> get booking;
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
    Object? booking = null,
    Object? trip = null,
    Object? seat = null,
    Object? returnTrip = freezed,
    Object? returnSeat = freezed,
    Object? name = null,
    Object? idNumber = null,
    Object? dateOfBirth = null,
    Object? isMale = null,
    Object? price = null,
    Object? note = null,
  }) {
    return _then(_$TicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketImpl implements _Ticket {
  const _$TicketImpl(
      {required this.id,
      required this.booking,
      required this.trip,
      required this.seat,
      required this.returnTrip,
      required this.returnSeat,
      required this.name,
      required this.idNumber,
      required this.dateOfBirth,
      required this.isMale,
      required this.price,
      required this.note});

  factory _$TicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketImplFromJson(json);

  @override
  final int id;
  @override
  final Booking booking;
  @override
  final Trip trip;
  @override
  final Seat seat;
  @override
  final Trip? returnTrip;
  @override
  final Seat? returnSeat;
  @override
  final String name;
  @override
  final String idNumber;
  @override
  final DateTime dateOfBirth;
  @override
  final bool isMale;
  @override
  final int price;
  @override
  final String note;

  @override
  String toString() {
    return 'Ticket(id: $id, booking: $booking, trip: $trip, seat: $seat, returnTrip: $returnTrip, returnSeat: $returnSeat, name: $name, idNumber: $idNumber, dateOfBirth: $dateOfBirth, isMale: $isMale, price: $price, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.returnTrip, returnTrip) ||
                other.returnTrip == returnTrip) &&
            (identical(other.returnSeat, returnSeat) ||
                other.returnSeat == returnSeat) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.isMale, isMale) || other.isMale == isMale) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, booking, trip, seat,
      returnTrip, returnSeat, name, idNumber, dateOfBirth, isMale, price, note);

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
      required final Booking booking,
      required final Trip trip,
      required final Seat seat,
      required final Trip? returnTrip,
      required final Seat? returnSeat,
      required final String name,
      required final String idNumber,
      required final DateTime dateOfBirth,
      required final bool isMale,
      required final int price,
      required final String note}) = _$TicketImpl;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$TicketImpl.fromJson;

  @override
  int get id;
  @override
  Booking get booking;
  @override
  Trip get trip;
  @override
  Seat get seat;
  @override
  Trip? get returnTrip;
  @override
  Seat? get returnSeat;
  @override
  String get name;
  @override
  String get idNumber;
  @override
  DateTime get dateOfBirth;
  @override
  bool get isMale;
  @override
  int get price;
  @override
  String get note;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
