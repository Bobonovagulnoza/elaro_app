import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../core/constants/app_styles.dart';

class CustomToast {
  static void showToast(
      BuildContext context,
      String iconPath,
      String message, Color white, Color red, {
        Color? backgroundColor,
        Color? borderColor,
      }) {
    FToast fToast = FToast();
    fToast.init(context);
    fToast.showToast(
      isDismissible: true,
      toastDuration: const Duration(seconds: 2),
      gravity: ToastGravity.CENTER,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: borderColor ?? Colors.red, width: 1.5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
                color: borderColor ?? Colors.red,
              ),
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  message,
                  style: AppStyle.w500s15h20Primary.copyWith(
                    fontSize: 15,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
