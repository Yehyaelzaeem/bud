import 'package:json_annotation/json_annotation.dart'; 

part 'login_response.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class LoginResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'full name')
  String? fullName;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'country_id')
  int? countryId;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'fcm_token')
  String? fcmToken;

  LoginResponse({this.id, this.fullName, this.email, this.phone, this.countryId, this.token, this.fcmToken});

   factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

   Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

