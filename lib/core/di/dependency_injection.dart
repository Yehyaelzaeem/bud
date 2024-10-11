import 'package:bud/src/auth/data/repo/auth_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../src/auth/logic/auth_cubit.dart';
import '../networking/api_response_interceptor.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  dio.interceptors.add(ApiResponseInterceptor()); // Add interceptor to Dio instance
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio,));

  // login
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt()));



}
