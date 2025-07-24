import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';


class PinPutWidget extends StatefulWidget {
  const PinPutWidget({super.key, required this.controller});
  final TextEditingController controller;


  @override
  State<PinPutWidget> createState() => _PinPutWidgetState();
}

class _PinPutWidgetState extends State<PinPutWidget> {
  @override
  Widget build(BuildContext context) {
    return Pinput(
      // defaultPinTheme: defaultPinTheme,
      // focusedPinTheme: focusedPinTheme,
      // submittedPinTheme: submittedPinTheme,
      controller: widget.controller,
      length: 6,
      defaultPinTheme: PinTheme(
        textStyle: AppStyle.w700s18h28DarkBluePrimary,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: AppColor.lightGray500)
        ),
      ),
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => log(pin),
    );
  }
}
