import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({
    super.key,
    required this.title,
    this.action = const [],
    this.navigate = true,
    this.color,
    this.leading,
    this.textColor,
  });

  final String title;
  final List<Widget> action;
  final bool navigate;
  final Color? color;
  final Widget? leading;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? AppColor.primary,
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: Text(
        title,
        style: AppStyle.w600s15h20DarkBluePrimary.copyWith(
          color: textColor ?? Colors.white,
        ),
      ),
      leading: leading,
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
