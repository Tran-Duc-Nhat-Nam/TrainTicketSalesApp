// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  int get id => throw _privateConstructorUsedError;
  Station get departureStation => throw _privateConstructorUsedError;
  Station get arrivalStation => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  List<Stop> get stops => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {int id,
      Station departureStation,
      Station arrivalStation,
      int distance,
      int duration,
      List<Stop> stops});

  $StationCopyWith<$Res> get departureStation;
  $StationCopyWith<$Res> get arrivalStation;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departureStation = null,
    Object? arrivalStation = null,
    Object? distance = null,
    Object? duration = null,
    Object? stops = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      departureStation: null == departureStation
          ? _value.departureStation
          : departureStation // ignore: cast_nullable_to_non_nullable
              as Station,
      arrivalStation: null == arrivalStation
          ? _value.arrivalStation
          : arrivalStation // ignore: cast_nullable_to_non_nullable
              as Station,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      stops: null == stops
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop>,
    ) as $Val);
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get departureStation {
    return $StationCopyWith<$Res>(_value.departureStation, (value) {
      return _then(_value.copyWith(departureStation: value) as $Val);
    });
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get arrivalStation {
    return $StationCopyWith<$Res>(_value.arrivalStation, (value) {
      return _then(_value.copyWith(arrivalStation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
          _$RouteImpl value, $Res Function(_$RouteImpl) then) =
      __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Station departureStation,
      Station arrivalStation,
      int distance,
      int duration,
      List<Stop> stops});

  @override
  $StationCopyWith<$Res> get departureStation;
  @override
  $StationCopyWith<$Res> get arrivalStation;
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
      _$RouteImpl _value, $Res Function(_$RouteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departureStation = null,
    Object? arrivalStation = null,
    Object? distance = null,
    Object? duration = null,
    Object? stops = null,
  }) {
    return _then(_$RouteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      departureStation: null == departureStation
          ? _value.departureStation
          : departureStation // ignore: cast_nullable_to_non_nullable
              as Station,
      arrivalStation: null == arrivalStation
          ? _value.arrivalStation
          : arrivalStation // ignore: cast_nullable_to_non_nullable
              as Station,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      stops: null == stops
          ? _value._stops
          : stops // ignore: cast_nullable_to_non_nullable
              as List<Stop>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl(
      {required this.id,
      required this.departureStation,
      required this.arrivalStation,
      required this.distance,
      required this.duration,
      required final List<Stop> stops})
      : _stops = stops;

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final int id;
  @override
  final Station departureStation;
  @override
  final Station arrivalStation;
  @override
  final int distance;
  @override
  final int duration;
  final List<Stop> _stops;
  @override
  List<Stop> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  @override
  String toString() {
    return 'Route(id: $id, departureStation: $departureStation, arrivalStation: $arrivalStation, distance: $distance, duration: $duration, stops: $stops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.departureStation, departureStation) ||
                other.departureStation == departureStation) &&
            (identical(other.arrivalStation, arrivalStation) ||
                other.arrivalStation == arrivalStation) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._stops, _stops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      departureStation,
      arrivalStation,
      distance,
      duration,
      const DeepCollectionEquality().hash(_stops));

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  const factory _Route(
      {required final int id,
      required final Station departureStation,
      required final Station arrivalStation,
      required final int distance,
      required final int duration,
      required final List<Stop> stops}) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  int get id;
  @override
  Station get departureStation;
  @override
  Station get arrivalStation;
  @override
  int get distance;
  @override
  int get duration;
  @override
  List<Stop> get stops;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
