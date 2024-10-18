// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['full name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      token: json['token'] as String?,
      fcmToken: json['fcm_token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'country_id': instance.countryId,
      'token': instance.token,
      'fcm_token': instance.fcmToken,
    };
