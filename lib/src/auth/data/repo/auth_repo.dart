
import 'dart:convert';
import 'package:bud/core/networking/api_result.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../../../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../models/login_params.dart';
import '../models/login_response.dart';

class AuthRepo {
  final ApiService _apiService;
  AuthRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginParamsData params)async{
   try{
     print('sssssssssssssssssssssssss ${params.toJson()}');
     final response = await _apiService.login(params);
     print('sssssssssssssssssssssssss ${response.toString()}');

     return ApiResult.success(response.data!);
   }catch(e){
     return ApiResult.failure(ErrorHandler.handle(e.toString()));
   }


  }

}