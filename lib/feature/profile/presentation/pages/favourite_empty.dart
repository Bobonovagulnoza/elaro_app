import 'package:easy_localization/easy_localization.dart';
import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/source/main_source.dart';
import 'package:elaro_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoriteEmptyWidget extends StatefulWidget {
  const FavoriteEmptyWidget({super.key});

  @override
  State<FavoriteEmptyWidget> createState() => _FavoriteEmptyWidgetState();
}

class _FavoriteEmptyWidgetState extends State<FavoriteEmptyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(
          Icons.favorite_rounded,
          size: 100,
          color: AppColor.lightGray600,
        ),
        const SizedBox(height: 10),
        Text(
          "Sevimlilar ro'yxati bo'sh".tr(),
          // style: AppStyle.w500s17h20DarkBlue500.copyWith(color: AppColor.lightGray700),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: CustomButton(
            color: Colors.white,
            text: "Mahsulotlarni ko'rish",
            onPressed: () {
              MainSources.currentPage.value = 0;
              context.pop();
            },
          ),
        ),
      ],
    );
  }
}
