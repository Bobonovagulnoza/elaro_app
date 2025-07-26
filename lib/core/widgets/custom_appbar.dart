import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/constants/app_styles.dart';
import 'package:elaro_app/core/widgets/translator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.titleUz,
    required this.titleRu,
    required this.titleCrl,
    this.action = const [],
    this.navigate = true,
    this.color,
    this.textColor,
  });
  final String titleUz;
  final String titleRu;
  final String titleCrl;
  final List<Widget> action;
  final bool navigate;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: color ?? AppColor.primary,
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: Translator(
        uz: titleUz,
        ru: titleRu,
        crl: titleCrl,
        style: AppStyle.w600s15h20DarkBluePrimary.copyWith(
          color: textColor ?? Colors.white,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
