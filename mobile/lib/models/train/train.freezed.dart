// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Train _$TrainFromJson(Map<String, dynamic> json) {
  return _Train.fromJson(json);
}

/// @nodoc
mixin _$Train {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Car> get cars => throw _privateConstructorUsedError;

  /// Serializes this Train to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Train
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainCopyWith<Train> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainCopyWith<$Res> {
  factory $TrainCopyWith(Train value, $Res Function(Train) then) =
      _$TrainCopyWithImpl<$Res, Train>;
  @useResult
  $Res call({int id, String code, String name, List<Car> cars});
}

/// @nodoc
class _$TrainCopyWithImpl<$Res, $Val extends Train>
    implements $TrainCopyWith<$Res> {
  _$TrainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Train
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? cars = null,
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
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainImplCopyWith<$Res> implements $TrainCopyWith<$Res> {
  factory _$$TrainImplCopyWith(
          _$TrainImpl value, $Res Function(_$TrainImpl) then) =
      __$$TrainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String code, String name, List<Car> cars});
}

/// @nodoc
class __$$TrainImplCopyWithImpl<$Res>
    extends _$TrainCopyWithImpl<$Res, _$TrainImpl>
    implements _$$TrainImplCopyWith<$Res> {
  __$$TrainImplCopyWithImpl(
      _$TrainImpl _value, $Res Function(_$TrainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Train
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? cars = null,
  }) {
    return _then(_$TrainImpl(
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
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainImpl implements _Train {
  const _$TrainImpl(
      {required this.id,
      required this.code,
      required this.name,
      required final List<Car> cars})
      : _cars = cars;

  factory _$TrainImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'Train(id: $id, code: $code, name: $name, cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, code, name, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of Train
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainImplCopyWith<_$TrainImpl> get copyWith =>
      __$$TrainImplCopyWithImpl<_$TrainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainImplToJson(
      this,
    );
  }
}

abstract class _Train implements Train {
  const factory _Train(
      {required final int id,
      required final String code,
      required final String name,
      required final List<Car> cars}) = _$TrainImpl;

  factory _Train.fromJson(Map<String, dynamic> json) = _$TrainImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get name;
  @override
  List<Car> get cars;

  /// Create a copy of Train
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainImplCopyWith<_$TrainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
