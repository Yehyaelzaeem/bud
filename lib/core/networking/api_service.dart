
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../src/auth/data/models/login_params.dart';
import '../../src/auth/data/models/login_response.dart';
import 'api_constants.dart';
import 'api_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  ///Auth
  @POST(ApiConstants.login)
  Future<ApiResponse<LoginResponse>> login(@Body() LoginParamsData params);



}
