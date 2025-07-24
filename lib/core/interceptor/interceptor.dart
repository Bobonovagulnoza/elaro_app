// import 'dart:convert';
// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:elaro_app/core/status_model/status_model.dart';
// import 'package:elaro_app/core/utils/utils.dart';
// import '../../feature/login/data/db/secure_storage.dart';
//
// class DioClient {
//   final String baseUrl = "https://api.elaro.uz/api";
//   late final Dio dioClient;
//
//   DioClient() {
//     dioClient = Dio(
//       BaseOptions(
//         baseUrl: baseUrl,
//         connectTimeout: const Duration(seconds: 20),
//         receiveTimeout: const Duration(seconds: 20),
//         sendTimeout: const Duration(seconds: 20),
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//     );
//
//     dioClient.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           final token = await SecureStorage().getToken();
//           if (token != null && token.isNotEmpty) {
//             options.headers['Authorization'] = 'Bearer $token';
//           }
//
//           log("⬆️ REQUEST [${options.method}] => ${options.uri}");
//           if (options.data != null) log("📦 BODY: ${options.data}");
//           if (options.headers.isNotEmpty) log("🔐 HEADERS: ${options.headers}");
//
//           return handler.next(options);
//         },
//         onResponse: (response, handler) {
//           log("✅ RESPONSE [${response.statusCode}] => ${response.requestOptions.uri}");
//           log("📥 RESPONSE DATA: ${response.data}");
//           return handler.next(response);
//         },
//         onError: (error, handler) {
//           log("❌ ERROR: ${error.message}");
//           if (error.response != null) {
//             log("💢 RESPONSE STATUS: ${error.response?.statusCode}");
//             log("💢 RESPONSE BODY: ${error.response?.data}");
//           }
//           return handler.next(error);
//         },
//       ),
//     );
//   }
//
//   Future<StatusModel> get({
//     required String url,
//     Map<String, dynamic>? params,
//   }) async {
//     try {
//       final response = await dioClient.get(
//         url,
//         queryParameters: params,
//       );
//
//       return StatusModel(
//         response: response.data,
//         code: response.statusCode,
//         isSuccess: Utils.isDioSuccess(response.statusCode),
//       );
//     } on DioException catch (e) {
//       log("❗ DioException: ${e.message}");
//       return StatusModel(
//         response: e.response?.data ?? {"error": e.message},
//         code: e.response?.statusCode ?? 500,
//         isSuccess: false,
//       );
//     } catch (e) {
//       log("❗ Unknown Error: $e");
//       return StatusModel(
//         response: {"error": e.toString()},
//         code: 500,
//         isSuccess: false,
//       );
//     }
//   }
//
//   Future<StatusModel> post({
//     required String url,
//     required Map<String, dynamic> body,
//   }) async {
//     try {
//       final response = await dioClient.post(
//         url,
//         data: jsonEncode(body),
//       );
//
//       return StatusModel(
//         response: response.data,
//         code: response.statusCode,
//         isSuccess: Utils.isDioSuccess(response.statusCode),
//       );
//     } on DioException catch (e) {
//       log("❗ DioException: ${e.message}");
//       return StatusModel(
//         response: e.response?.data ?? {"error": e.message},
//         code: e.response?.statusCode ?? 500,
//         isSuccess: false,
//       );
//     } catch (e) {
//       log("❗ Unknown Error: $e");
//       return StatusModel(
//         response: {"error": e.toString()},
//         code: 500,
//         isSuccess: false,
//       );
//     }
//   }
// }

import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:elaro_app/core/status_model/status_model.dart';
import 'package:elaro_app/core/utils/utils.dart';

import '../../feature/login/data/db/secure_storage.dart';

class DioClient {
  final String baseUrl = "https://api.elaro.uz/api";
  late final Dio dioClient;

  DioClient() {
    dioClient = Dio(

      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 20),
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    dioClient.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SecureStorage().getToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          log("⬆️ REQUEST [${options.method}] => ${options.uri}");
          if (options.data != null) log("📦 BODY: ${options.data}");
          if (options.headers.isNotEmpty) log("🔐 HEADERS: ${options.headers}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log("✅ RESPONSE [${response.statusCode}] => ${response.data}");
          return handler.next(response);
        },
        onError: (error, handler) {
          log("❌ ERROR: ${error.message}");
          if (error.response != null) {
            log("💢 RESPONSE STATUS: ${error.response?.statusCode}");
            log("💢 RESPONSE BODY: ${error.response?.data}");
          }
          return handler.next(error);
        },
      ),
    );
  }

  Future<StatusModel> get({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await dioClient.get(
        url,
        queryParameters: params,
      );

      if (Utils.isDioSuccess(response.statusCode)) {
        return StatusModel(
          response: response.data,
          code: response.statusCode,
          isSuccess: true,
        );
      }

      return StatusModel(
        response: response.data,
        code: response.statusCode,
        isSuccess: false,
      );
    } on DioException catch (e) {
      log("❗ DioException: ${e.message}");
      return StatusModel(
        response: e.response?.data ?? {"error": e.message},
        code: e.response?.statusCode ?? 500,
        isSuccess: false,
      );
    } catch (e) {
      log("❗ Unknown Error: $e");
      return StatusModel(
        response: {"error": e.toString()},
        code: 500,
        isSuccess: false,
      );
    }
  }

  Future<StatusModel> post({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await dioClient.post(
        url,
        data: jsonEncode(body),
      );

      if (Utils.isDioSuccess(response.statusCode)) {
        return StatusModel(
          response: response.data,
          code: response.statusCode,
          isSuccess: true,
        );
      }

      return StatusModel(
        response: response.data,
        code: response.statusCode,
        isSuccess: false,
      );
    } on DioException catch (e) {
      log("❗ DioException: ${e.message}");
      return StatusModel(
        response: e.response?.data ?? {"error": e.message},
        code: e.response?.statusCode ?? 500,
        isSuccess: false,
      );
    } catch (e) {
      log("❗ Unknown Error: $e");
      return StatusModel(
        response: {"error": e.toString()},
        code: 500,
        isSuccess: false,
      );
    }
  }
}