import 'package:easy_localization/easy_localization.dart';
import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(
          Icons.shopping_cart_outlined,
          size: 100,
          color: AppColor.lightGray600,
        ),
        const SizedBox(height: 10),
        Text("Mahsulot mavjud emas".tr(), textAlign: TextAlign.center),
      ],
    );
  }
}
