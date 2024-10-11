import 'package:json_annotation/json_annotation.dart'; 

part 'login_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class LoginParamsData {
  @JsonKey(name: 'EmailOrPhone')
  String? phone;
  @JsonKey(name: 'password')
  String? password;

  LoginParamsData({this.phone, this.password});

   factory LoginParamsData.fromJson(Map<String, dynamic> json) => _$LoginParamsDataFromJson(json);

   Map<String, dynamic> toJson() => _$LoginParamsDataToJson(this);
}

