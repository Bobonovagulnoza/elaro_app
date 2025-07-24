// import 'dart:convert';
// import 'package:dio/dio.dart';
// import '../../feature/login/data/db/secure_storage.dart';
// import '../status_model/status_model.dart';
//
// class DioClient {
//   final baseUrl = "https://api.elaro.uz/api";
//   Dio dio = Dio();
//
//   static Future<Map<String, dynamic>> defaultHeader() async {
//     String token = await SecureStorage().read(key: 'token') ?? "";
//     return {
//       'Authorization': 'Bearer $token',
//       'Accept': 'application/json, text/plain',
//     };
//   }
//
//   Future<StatusModel> registerUser(Map<String, dynamic> body) async {
//     try {
//       final res = await dio.post(
//         "$baseUrl/register",
//         data: jsonEncode(body),
//         options: Options(
//           headers: {"Content-Type": "application/json"},
//         ),
//       );
//       return StatusModel(response: res.data, isSuccess: true, code: res.statusCode);
//     } on DioException catch (e) {
//       return StatusModel(response: e.response, isSuccess: false, code: e.response?.statusCode);
//     }
//   }
//
//   Future<StatusModel> loginUser(Map<String, dynamic> body) async {
//     try {
//       final res = await dio.post(
//         "$baseUrl/login",
//         data: jsonEncode(body),
//         options: Options(
//           headers: {"Content-Type": "application/json"},
//         ),
//       );
//       return StatusModel(response: res.data, isSuccess: true, code: res.statusCode);
//     } on DioException catch (e) {
//       return StatusModel(response: e.response, isSuccess: false, code: e.response?.statusCode);
//     }
//   }
//
//
//   Future<StatusModel> verifyOtp(Map<String, dynamic> body) async {
//     try {
//       final res = await dio.post(
//         "$baseUrl/verify-otp",
//         data: jsonEncode(body),
//         options: Options(
//           headers: {"Content-Type": "application/json"},
//         ),
//       );
//       return StatusModel(response: res.data, isSuccess: true, code: res.statusCode);
//     } on DioException catch (e) {
//       return StatusModel(response: e.response, isSuccess: false, code: e.response?.statusCode);
//     }
//   }
//
//
//
// }
