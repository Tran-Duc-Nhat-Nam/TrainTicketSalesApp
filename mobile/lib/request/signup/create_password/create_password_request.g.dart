// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePasswordRequestImpl _$$CreatePasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePasswordRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$CreatePasswordRequestImplToJson(
        _$CreatePasswordRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
