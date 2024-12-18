// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Train get train => throw _privateConstructorUsedError;
  Route get route => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get departureTime => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get arrivalTime => throw _privateConstructorUsedError;
  int get soldSeat => throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {int id,
      String code,
      String name,
      Train train,
      Route route,
      @DateTimeConverter() DateTime departureTime,
      @DateTimeConverter() DateTime arrivalTime,
      int soldSeat});

  $TrainCopyWith<$Res> get train;
  $RouteCopyWith<$Res> get route;
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? train = null,
    Object? route = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
    Object? soldSeat = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      train: null == train
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      soldSeat: null == soldSeat
          ? _value.soldSeat
          : soldSeat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrainCopyWith<$Res> get train {
    return $TrainCopyWith<$Res>(_value.train, (value) {
      return _then(_value.copyWith(train: value) as $Val);
    });
  }

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteCopyWith<$Res> get route {
    return $RouteCopyWith<$Res>(_value.route, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String name,
      Train train,
      Route route,
      @DateTimeConverter() DateTime departureTime,
      @DateTimeConverter() DateTime arrivalTime,
      int soldSeat});

  @override
  $TrainCopyWith<$Res> get train;
  @override
  $RouteCopyWith<$Res> get route;
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? train = null,
    Object? route = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
    Object? soldSeat = null,
  }) {
    return _then(_$TripImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      train: null == train
          ? _value.train
          : train // ignore: cast_nullable_to_non_nullable
              as Train,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      soldSeat: null == soldSeat
          ? _value.soldSeat
          : soldSeat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  const _$TripImpl(
      {required this.id,
      required this.code,
      required this.name,
      required this.train,
      required this.route,
      @DateTimeConverter() required this.departureTime,
      @DateTimeConverter() required this.arrivalTime,
      required this.soldSeat});

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final Train train;
  @override
  final Route route;
  @override
  @DateTimeConverter()
  final DateTime departureTime;
  @override
  @DateTimeConverter()
  final DateTime arrivalTime;
  @override
  final int soldSeat;

  @override
  String toString() {
    return 'Trip(id: $id, code: $code, name: $name, train: $train, route: $route, departureTime: $departureTime, arrivalTime: $arrivalTime, soldSeat: $soldSeat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.train, train) || other.train == train) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.soldSeat, soldSeat) ||
                other.soldSeat == soldSeat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, train, route,
      departureTime, arrivalTime, soldSeat);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required final int id,
      required final String code,
      required final String name,
      required final Train train,
      required final Route route,
      @DateTimeConverter() required final DateTime departureTime,
      @DateTimeConverter() required final DateTime arrivalTime,
      required final int soldSeat}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get name;
  @override
  Train get train;
  @override
  Route get route;
  @override
  @DateTimeConverter()
  DateTime get departureTime;
  @override
  @DateTimeConverter()
  DateTime get arrivalTime;
  @override
  int get soldSeat;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
