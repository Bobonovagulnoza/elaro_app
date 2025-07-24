import 'package:flutter/material.dart';

import '../../../../../core/constants/app_icons.dart';
import 'app_lottie_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppLottieWidget(image: AppIcons.lottieLoadingJson, height: 150),
    );
  }
}
