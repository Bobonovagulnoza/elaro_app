import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  final Function() ontap;
  final bool isSelected;

  const FavouriteButton({
    super.key,
    required this.ontap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: IconButton.styleFrom(backgroundColor: Colors.white),
      onPressed: ontap,
      icon: Icon(
        isSelected ? Icons.favorite : Icons.favorite_border,
        color: isSelected ? Colors.red : AppColor.lightGray600,
      ),
    );
  }
}
