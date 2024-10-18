// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParamsData _$LoginParamsDataFromJson(Map<String, dynamic> json) =>
    LoginParamsData(
      phone: json['EmailOrPhone'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginParamsDataToJson(LoginParamsData instance) =>
    <String, dynamic>{
      'EmailOrPhone': instance.phone,
      'password': instance.password,
    };
