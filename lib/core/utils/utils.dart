import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../feature/login/data/db/secure_storage.dart';
import '../../feature/profile/models/profile_model.dart';

// class Utils {
//   static bool isDioSuccess(int? statusCode) {
//     if (statusCode == null) return false;
//     return (statusCode > 199 && statusCode < 300);
//   }
//
//   static String cashFormat(String cash) {
//     if (cash.contains('.')) {
//       cash = cash.substring(0, cash.indexOf('.'));
//     }
//
//     final formatCurrency = NumberFormat.currency(name: '', locale: "uz");
//
//     cash = formatCurrency.format(int.parse(cash)).toString();
//
//     if (cash.contains(',')) {
//       cash = cash.substring(0, cash.indexOf(','));
//     }
//
//     return cash;
//   }
//
//   static String generateGoogleMapsLink(double latitude, double longitude) {
//     return "https://www.google.com/maps?q=$latitude,$longitude";
//   }
//
//   static String? validator(String? value, int minLength) {
//     if (value == null || value.isEmpty) {
//       return 'Iltimos, maʼlumot kiriting';
//     } else if (value.length < minLength) {
//       return 'Kamida $minLength ta belgidan iborat bo‘lishi kerak';
//     }
//     return null;
//   }
//
// }


// import 'package:intl/intl.dart';
//
// import '../../feature/login/data/db/secure_storage.dart';
//
class Utils {
  static bool isDioSuccess(int? statusCode) {
    if (statusCode == null) return false;
    return (statusCode > 199 && statusCode < 300);
  }

  static String cashFormat(String cash) {
    if (cash.contains('.')) {
      cash = cash.substring(0, cash.indexOf('.'));
    }

    final formatCurrency = NumberFormat.currency(name: '', locale: "uz");

    cash = formatCurrency.format(int.parse(cash)).toString();

    if (cash.contains(',')) {
      cash = cash.substring(0, cash.indexOf(','));
    }

    return cash;
  }

  static String generateGoogleMapsLink(double latitude, double longitude) {
    return "https://www.google.com/maps?q=$latitude,$longitude";
  }

  Future<bool> isLogin() async {
    final token = await SecureStorage().read(key: "token");
    return token != null;
  }
  static Future<ProfileModel> getUser() async {
    final user = await SecureStorage().read(key: "user") ?? "";
    try {
      return ProfileModel.fromJson(json.decode(user));
    } catch (e) {
      return const ProfileModel();
    }
  }
  static String? validator(String? value, int minLength) {
    if (value == null || value.isEmpty) {

      return 'Iltimos, maʼlumot kiriting';
    } else if (value.length < minLength) {
      return 'Kamida $minLength ta belgidan iborat bo‘lishi kerak';
    }
    return null;
  }


}
