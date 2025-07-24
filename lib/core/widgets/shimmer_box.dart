import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:elaro_app/core/constants/app_colors.dart';

class ShimmerBox extends StatelessWidget {
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  const ShimmerBox({Key? key, this.height, this.width, this.borderRadius})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.lightGray200,
      highlightColor: AppColor.lightGray500,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
      ),
    );
  }
}
