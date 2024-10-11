import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';



class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          //  options.headers['username'] = 'admin';
          //  options.headers['password'] = 'admin';
          //  options.headers['include_as_data-Type'] = '1';
          //  options.headers['Content-Type'] = 'application/vnd.api+json';
           // options.headers['x-api-key'] = StorageDataHelper.getData(StorageApiHelper.kApiKey);
          // options.headers['Accept-Language'] = NavigationService.navigationKey.currentContext!.locale.languageCode;
          return handler.next(options);
        },
      ),
    );
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
