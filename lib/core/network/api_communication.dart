// import 'dart:io';

// import 'package:dio/dio.dart' as dio;
// import 'package:http_parser/http_parser.dart';

// import '../../shared/enums/mime_type.dart';
// import '../error/error_message.dart';
// import 'api_response.dart';
// import 'network_info.dart';

// class ApiCommunication {
//   late final dio.Dio _dio;
//   late final NetworkInfo networkInfo;

//   ApiCommunication._internal();

//   static ApiCommunication instance = ApiCommunication._internal();

//   factory ApiCommunication() {
//     return instance;
//   }

//   ApiCommunication initialize({
//     required String baseUrl,
//     required NetworkInfo networkInfo,
//   }) {
//     _dio = dio.Dio();
//     this.networkInfo = networkInfo;
//     addBaseOptions(baseUrl: baseUrl);
//     addInterceptor();
//     return this;
//   }

//   /*
//    * ┏==================================================================================================┓
//    * ┃                                       GET Request                                                ┃
//    * ┗==================================================================================================┛
//    */

//   Future<ApiResponse> doGetRequest({
//     required String apiEndPoint,
//     Map<String, dynamic>? requestData,
//     Map<String, dynamic>? queryParams,
//     String? responseDataKey,
//   }) async {
//     if (await networkInfo.isConnected) {
//       try {
//         dio.Response? response = await _dio.get(
//           apiEndPoint,
//           data: requestData,
//           queryParameters: queryParams,
//         );
//         if (response.statusCode.isSuccess) {
//           Map<String, dynamic> responseData = response.data;
//           return ApiResponse.fromMap(responseData, dataKey: responseDataKey);
//         } else {
//           return ApiResponse(
//             isSuccessful: false,
//             statusCode: response.statusCode ?? 0,
//             message: ErrorMessage.invalidStatusCode,
//           );
//         }
//       } catch (error) {
//         return ApiResponse(
//           isSuccessful: false,
//           statusCode: 0,
//           message: getErrorMessage(error) ?? ErrorMessage.serverException,
//         );
//       }
//     } else {
//       return ApiResponse(
//         isSuccessful: false,
//         statusCode: 0,
//         message: ErrorMessage.noInternetConnection,
//       );
//     }
//   }

//   /*
//    * ┏==================================================================================================┓
//    * ┃                                      POST Request                                                ┃
//    * ┗==================================================================================================┛
//    */

//   Future<ApiResponse> doPostRequest({
//     File? file,
//     String? fileKey,
//     bool isFormData = false,
//     required String apiEndPoint,
//     Map<String, dynamic>? requestData,
//     Map<String, dynamic>? queryParams,
//   }) async {
//     if (await networkInfo.isConnected) {
//       try {
//         final Object? requestObject;
//         if (isFormData) {
//           // If request data is Form data
//           dio.FormData requestFormData = dio.FormData.fromMap(requestData!);
//           if (file != null) {
//             // Having file to attatch
//             final mineType = MimeType.fromExtension(file.fileExtension);
//             final mediaType = MediaType.parse(mineType);
//             requestFormData.files.add(
//               MapEntry(
//                 fileKey ?? 'Attachment',
//                 dio.MultipartFile.fromFileSync(
//                   file.path,
//                   contentType: mediaType,
//                   filename: file.name,
//                 ),
//               ),
//             );
//           }
//           requestObject = requestFormData;
//         } else {
//           // If request data is Raw data
//           requestObject = requestData;
//         }
//         dio.Response? response;
//         response = await _dio.post(
//           apiEndPoint,
//           data: requestObject,
//           queryParameters: queryParams,
//         );

//         if (response.statusCode.isSuccess) {
//           Map<String, dynamic> responseData = response.data;
//           return ApiResponse.fromMap(responseData);
//         } else {
//           return ApiResponse(
//             isSuccessful: false,
//             statusCode: response.statusCode ?? 0,
//             message: ErrorMessage.invalidStatusCode,
//           );
//         }
//       } catch (error) {
//         return ApiResponse(
//           statusCode: 0,
//           isSuccessful: false,
//           message: getErrorMessage(error) ?? ErrorMessage.serverException,
//         );
//       }
//     } else {
//       return ApiResponse(
//         statusCode: 0,
//         isSuccessful: false,
//         message: ErrorMessage.noInternetConnection,
//       );
//     }
//   }

//   /*
//    * ┏==================================================================================================┓
//    * ┃                                       PUT Request                                                ┃
//    * ┗==================================================================================================┛
//    */

//   Future<ApiResponse> doPutRequest({
//     required String apiEndPoint,
//     Map<String, dynamic>? requestData,
//     Map<String, dynamic>? queryParams,
//   }) async {
//     if (await networkInfo.isConnected) {
//       try {
//         dio.Response? response;
//         response = await _dio.put(
//           apiEndPoint,
//           data: requestData,
//           queryParameters: queryParams,
//         );

//         if (response.statusCode.isSuccess) {
//           Map<String, dynamic> responseData = response.data;
//           return ApiResponse.fromMap(responseData);
//         } else {
//           return ApiResponse(
//             isSuccessful: false,
//             statusCode: response.statusCode ?? 0,
//             message: ErrorMessage.invalidStatusCode,
//           );
//         }
//       } catch (error) {
//         return ApiResponse(
//           statusCode: 0,
//           isSuccessful: false,
//           message: getErrorMessage(error) ?? ErrorMessage.serverException,
//         );
//       }
//     } else {
//       return ApiResponse(
//         statusCode: 0,
//         isSuccessful: false,
//         message: ErrorMessage.noInternetConnection,
//       );
//     }
//   }

//   /*
//    * ┏==================================================================================================┓
//    * ┃                                       PATCH Request                                              ┃
//    * ┗==================================================================================================┛
//    */

//   Future<ApiResponse> doPatchRequest({
//     required String apiEndPoint,
//     Object? requestData,
//     Map<String, dynamic>? queryParams,
//   }) async {
//     if (await networkInfo.isConnected) {
//       try {
//         dio.Response? response;
//         response = await _dio.patch(
//           apiEndPoint,
//           data: requestData,
//           queryParameters: queryParams,
//         );

//         if (response.statusCode.isSuccess) {
//           Map<String, dynamic> responseData = response.data;
//           return ApiResponse.fromMap(responseData);
//         } else {
//           return ApiResponse(
//             isSuccessful: false,
//             statusCode: response.statusCode ?? 0,
//             message: ErrorMessage.invalidStatusCode,
//           );
//         }
//       } catch (error) {
//         return ApiResponse(
//           statusCode: 0,
//           isSuccessful: false,
//           message: getErrorMessage(error) ?? ErrorMessage.serverException,
//         );
//       }
//     } else {
//       return ApiResponse(
//         statusCode: 0,
//         isSuccessful: false,
//         message: ErrorMessage.noInternetConnection,
//       );
//     }
//   }

//   /*
//    * ┏==================================================================================================┓
//    * ┃                                       DELETE Request                                             ┃
//    * ┗==================================================================================================┛
//    */

//   Future<ApiResponse> doDeteleRequest({
//     required String apiEndPoint,
//     Map<String, dynamic>? requestData,
//     Map<String, dynamic>? queryParams,
//   }) async {
//     if (await networkInfo.isConnected) {
//       try {
//         dio.Response? response;
//         response = await _dio.delete(
//           apiEndPoint,
//           data: requestData,
//           queryParameters: queryParams,
//         );

//         if (response.statusCode.isSuccess) {
//           Map<String, dynamic> responseData = response.data;
//           return ApiResponse.fromMap(responseData);
//         } else {
//           return ApiResponse(
//             isSuccessful: false,
//             statusCode: response.statusCode ?? 0,
//             message: ErrorMessage.invalidStatusCode,
//           );
//         }
//       } catch (error) {
//         return ApiResponse(
//           statusCode: 0,
//           isSuccessful: false,
//           message: getErrorMessage(error) ?? ErrorMessage.serverException,
//         );
//       }
//     } else {
//       return ApiResponse(
//         statusCode: 0,
//         isSuccessful: false,
//         message: ErrorMessage.noInternetConnection,
//       );
//     }
//   }

//   void addBaseOptions({required String baseUrl, String? accessToken}) {
//     _dio.options = dio.BaseOptions(
//       baseUrl: baseUrl,
//       connectTimeout: const Duration(seconds: 60),
//       receiveTimeout: const Duration(seconds: 60),
//       headers: {'Accept': '*/*', 'Content-Type': 'application/json'},
//     );
//   }

//   void addInterceptor() {
//     _dio.interceptors.add(
//       dio.InterceptorsWrapper(
//         onResponse: (response, handler) {
//           Map<String, dynamic> requestData =
//               (response.requestOptions.data is dio.FormData)
//               ? (response.requestOptions.data as dio.FormData).fields
//                     .asMap()
//                     .map((key, value) => MapEntry(value.key, value.value))
//               : (response.requestOptions.data is Map<String, dynamic>)
//               ? response.requestOptions.data
//               : {};
//           logRestRequest(
//             requesType: response.requestOptions.method,
//             requestParam: response.requestOptions.queryParameters,
//             requestData: requestData,
//             url: response.realUri.path,
//             responseData: response.data,
//           );
//           handler.next(response);
//         },
//         onError: (error, handler) {
//           handler.next(error);
//         },
//       ),
//     );
//   }

//   void setAuthHeader(String token) {
//     _dio.options.headers['Authorization'] = 'Bearer $token';
//   }

//   void endConnection() => _dio.close(force: true);

//   String? getErrorMessage(Object error) {
//     if (error is dio.DioException) {
//       final errorResponse = error.response;
//       if (errorResponse != null) {
//         final errorData = errorResponse.data;
//         if (errorData is Map<String, dynamic>) {
//           String? message = errorData['message'];
//           return message;
//         } else if (errorResponse.statusCode == 400) {
//           return ErrorMessage.invalidRequest;
//         } else if (errorResponse.statusCode == 404) {
//           return ErrorMessage.endPointNotFound;
//         } else {
//           return errorResponse.statusMessage;
//         }
//       } else {
//         return null;
//       }
//     } else {
//       return null;
//     }
//   }
// }
