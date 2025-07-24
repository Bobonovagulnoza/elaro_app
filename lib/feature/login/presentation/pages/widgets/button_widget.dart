import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, required this.onTap, this.textColor, this.btnColor, this.isLoading = false});

  final String text;
  final Function()? onTap;
  final Color? btnColor;
  final Color? textColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: btnColor ?? AppColor.primary,
      borderRadius: BorderRadius.circular(10),
      onPressed: onTap,
      child: isLoading ? const CupertinoActivityIndicator() : Text(
        text,
        style: AppStyle.w500s17h20DarkBlue500.copyWith(
          color: textColor ?? AppColor.white,
        ),
      ),
    );
  }
}
