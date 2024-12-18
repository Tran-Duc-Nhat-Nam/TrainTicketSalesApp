// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stop _$StopFromJson(Map<String, dynamic> json) {
  return _Stop.fromJson(json);
}

/// @nodoc
mixin _$Stop {
  int get id => throw _privateConstructorUsedError;
  int get durationFromStart => throw _privateConstructorUsedError;
  Station get station => throw _privateConstructorUsedError;

  /// Serializes this Stop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StopCopyWith<Stop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StopCopyWith<$Res> {
  factory $StopCopyWith(Stop value, $Res Function(Stop) then) =
      _$StopCopyWithImpl<$Res, Stop>;
  @useResult
  $Res call({int id, int durationFromStart, Station station});

  $StationCopyWith<$Res> get station;
}

/// @nodoc
class _$StopCopyWithImpl<$Res, $Val extends Stop>
    implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? durationFromStart = null,
    Object? station = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      durationFromStart: null == durationFromStart
          ? _value.durationFromStart
          : durationFromStart // ignore: cast_nullable_to_non_nullable
              as int,
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
    ) as $Val);
  }

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get station {
    return $StationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> implements $StopCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int durationFromStart, Station station});

  @override
  $StationCopyWith<$Res> get station;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$StopCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? durationFromStart = null,
    Object? station = null,
  }) {
    return _then(_$StopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      durationFromStart: null == durationFromStart
          ? _value.durationFromStart
          : durationFromStart // ignore: cast_nullable_to_non_nullable
              as int,
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as Station,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StopImpl implements _Stop {
  const _$StopImpl(
      {required this.id,
      required this.durationFromStart,
      required this.station});

  factory _$StopImpl.fromJson(Map<String, dynamic> json) =>
      _$$StopImplFromJson(json);

  @override
  final int id;
  @override
  final int durationFromStart;
  @override
  final Station station;

  @override
  String toString() {
    return 'Stop(id: $id, durationFromStart: $durationFromStart, station: $station)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.durationFromStart, durationFromStart) ||
                other.durationFromStart == durationFromStart) &&
            (identical(other.station, station) || other.station == station));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, durationFromStart, station);

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StopImplCopyWith<_$StopImpl> get copyWith =>
      __$$StopImplCopyWithImpl<_$StopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StopImplToJson(
      this,
    );
  }
}

abstract class _Stop implements Stop {
  const factory _Stop(
      {required final int id,
      required final int durationFromStart,
      required final Station station}) = _$StopImpl;

  factory _Stop.fromJson(Map<String, dynamic> json) = _$StopImpl.fromJson;

  @override
  int get id;
  @override
  int get durationFromStart;
  @override
  Station get station;

  /// Create a copy of Stop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StopImplCopyWith<_$StopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
