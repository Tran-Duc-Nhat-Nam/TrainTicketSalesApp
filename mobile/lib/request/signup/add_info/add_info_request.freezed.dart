// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddInfoRequest _$AddInfoRequestFromJson(Map<String, dynamic> json) {
  return _AddInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$AddInfoRequest {
  String get email => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this AddInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddInfoRequestCopyWith<AddInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddInfoRequestCopyWith<$Res> {
  factory $AddInfoRequestCopyWith(
          AddInfoRequest value, $Res Function(AddInfoRequest) then) =
      _$AddInfoRequestCopyWithImpl<$Res, AddInfoRequest>;
  @useResult
  $Res call(
      {String email,
      String idNumber,
      String name,
      int age,
      bool isMale,
      String phoneNumber});
}

/// @nodoc
class _$AddInfoRequestCopyWithImpl<$Res, $Val extends AddInfoRequest>
    implements $AddInfoRequestCopyWith<$Res> {
  _$AddInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? idNumber = null,
    Object? name = null,
    Object? age = null,
    Object? isMale = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddInfoRequestImplCopyWith<$Res>
    implements $AddInfoRequestCopyWith<$Res> {
  factory _$$AddInfoRequestImplCopyWith(_$AddInfoRequestImpl value,
          $Res Function(_$AddInfoRequestImpl) then) =
      __$$AddInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String idNumber,
      String name,
      int age,
      bool isMale,
      String phoneNumber});
}

/// @nodoc
class __$$AddInfoRequestImplCopyWithImpl<$Res>
    extends _$AddInfoRequestCopyWithImpl<$Res, _$AddInfoRequestImpl>
    implements _$$AddInfoRequestImplCopyWith<$Res> {
  __$$AddInfoRequestImplCopyWithImpl(
      _$AddInfoRequestImpl _value, $Res Function(_$AddInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? idNumber = null,
    Object? name = null,
    Object? age = null,
    Object? isMale = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$AddInfoRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddInfoRequestImpl implements _AddInfoRequest {
  const _$AddInfoRequestImpl(
      {required this.email,
      required this.idNumber,
      required this.name,
      required this.age,
      required this.isMale,
      required this.phoneNumber});

  factory _$AddInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddInfoRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String idNumber;
  @override
  final String name;
  @override
  final int age;
  @override
  final bool isMale;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AddInfoRequest(email: $email, idNumber: $idNumber, name: $name, age: $age, isMale: $isMale, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddInfoRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.isMale, isMale) || other.isMale == isMale) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, idNumber, name, age, isMale, phoneNumber);

  /// Create a copy of AddInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddInfoRequestImplCopyWith<_$AddInfoRequestImpl> get copyWith =>
      __$$AddInfoRequestImplCopyWithImpl<_$AddInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _AddInfoRequest implements AddInfoRequest {
  const factory _AddInfoRequest(
      {required final String email,
      required final String idNumber,
      required final String name,
      required final int age,
      required final bool isMale,
      required final String phoneNumber}) = _$AddInfoRequestImpl;

  factory _AddInfoRequest.fromJson(Map<String, dynamic> json) =
      _$AddInfoRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get idNumber;
  @override
  String get name;
  @override
  int get age;
  @override
  bool get isMale;
  @override
  String get phoneNumber;

  /// Create a copy of AddInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddInfoRequestImplCopyWith<_$AddInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
