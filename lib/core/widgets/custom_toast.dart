import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static void showToast(
    BuildContext context,
    Icon icon,
    String message,
    Color color,
    Color borderColor,
  ) {
    FToast fToast = FToast();
    fToast.init(context);
    fToast.showToast(
      isDismissible: true,
      toastDuration: const Duration(seconds: 2),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: borderColor, width: 1.5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon(icon, width: 20, height: 20, color: borderColor),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  // style: AppStyle.w500s15h20Primary.copyWith(
                  //   fontSize: 16,
                  //   height: 24 / 16,
                  // ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
      gravity: ToastGravity.CENTER,
    );
  }
}
