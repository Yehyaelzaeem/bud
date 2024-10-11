// import 'dart:ui';
// import 'package:alnassaj/core/helper/storage_data.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
//
// import 'api_constants.dart';
//
//
// class DioHelper {
//   static Dio dio = Dio();
//
//   static String? token;
//   static String? langauge;
//   static Locale? currentLocale = WidgetsBinding.instance!.window.locale;
//
//   // static _getToken() async{
//   //   if (token == null) {
//   //     token = await CacheHelper.getDate(key: 'token');
//   //     langauge = await CacheHelper.getDate(key: 'lang');
//   //     if(null !=token) {
//   //       dio.options.headers.addAll(<String, dynamic>{
//   //         'Authorization': 'Bearer $token',
//   //         'Accept-Language': ' ${currentLocale!}'});
//   //     }
//   //
//   //   }
//   // }
//   static init() {
//     // _getToken();
//     dio = Dio(
//       BaseOptions(
//           baseUrl: ApiConstants.apiBaseUrl,
//           receiveDataWhenStatusError: true,
//           headers: {
//             'Content-Type': 'application/vnd.api+json',
//             'x-api-key':StorageDataHelper.getData(StorageApiHelper.kApiKey)??''
//           }),);
//   }
//
//
//   static Future<Response<dynamic>> postData({
//     required String url,FormData? dataOption,
//     Object? data,dynamic dataEncode, Map<String, dynamic>? query,String? token,String? language}) async
//   {
//     dio.options.headers = <String,dynamic >{
//     'Content-Type':'application/json',
//       'username': 'admin',
//       'password': 'admin'
//     };
//     return dio.post(url, data:dataEncode ?? data??dataOption, queryParameters: query);
//   }
//
//   static Future<Response> requestData({required String url,String? urlWithBase,required String method, Object? data}) async
//   {
//
//     var headers = {
//       'Content-Type': 'application/vnd.api+json',
//       'include_as_data': '1',
//       'x-api-key':StorageDataHelper.getData(StorageApiHelper.kApiKey)??''
//
//     };
//   print("body: $data");
//   var response = await dio.request(
//     urlWithBase??
//         '${ApiConstants.apiBaseUrl}$url',
//       options: Options(
//         method: method,
//         headers: headers,
//       ),
//       data: data,
//     );
//   return response;
//   }
//
//
//   static Future<Response> putData({required String url, required Map<String, dynamic> data, Map<String, dynamic>? query,}) async
//   {
//
//     // dio.options.headers = {'lang': lang, 'Authorization': token};
//     return dio.put(url, data: data, queryParameters: query);
//   }
//
//
//
//   static Future<dynamic> getData({required String url, Map<String, dynamic>? query,String?token, String? language}) async
//   {
//     dio.options.headers = <String, dynamic>{
//       'Authorization':
//       'Bearer $token'};
//     return dio.get(url, queryParameters: query);
//   }
//
//
// }
