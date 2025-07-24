import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_styles.dart';

class AppTextfiled<T> extends StatefulWidget {
  const AppTextfiled({super.key,
  this.controller,
    this.textStyle,
    this.hintText,
    this.prefix,
    this.suffix,
    this.suffixIcon,
    this.validator,
    this.fillColor,
    this.enable,
    this.onChanged,
    this.inputFormatters,
    this.keyboard,
    this.decoration,
    this.borderInput,
    this.focusNode,
    this.maxLines,
    this.minLines,
  });
  final TextEditingController? controller;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? textStyle;
  final FormFieldValidator<String>? validator;
  final Color? fillColor;
  final bool? enable;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboard;
  final InputDecoration? decoration;
  final InputBorder? borderInput;
  final FocusNode? focusNode;
  final int? maxLines;
  final int? minLines;

  @override
  State<AppTextfiled> createState() => _AppTextfiledState();
}

class _AppTextfiledState extends State<AppTextfiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboard,
      	onChanged: widget.onChanged,
      	enabled: widget.enable,
        validator: widget.validator,
        style: widget.textStyle,
        controller: widget.controller,
        onTapOutside: (event){
          FocusScope.of(context).unfocus();
        },
        inputFormatters: widget.inputFormatters,
        decoration: widget.decoration ?? InputDecoration(
          errorStyle: const TextStyle(fontSize: 0),
          hintFadeDuration: const Duration(milliseconds: 500),
          hintText: widget.hintText,
          hintStyle: widget.textStyle ?? AppStyle.w400s13h18DarkBlue300,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffix,
          suffix: widget.suffixIcon,
          fillColor: AppColor.lightGray200,
          filled: true,
          isDense: true,
          focusColor: widget.fillColor ?? AppColor.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: widget.borderInput ?? OutlineInputBorder(
            borderSide: BorderSide(color: widget.fillColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: widget.borderInput ?? OutlineInputBorder(
            borderSide: BorderSide(color: widget.fillColor ?? AppColor.primary),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: widget.borderInput ?? OutlineInputBorder(
            borderSide: BorderSide(color: widget.fillColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder:  widget.borderInput ?? OutlineInputBorder(
            borderSide: BorderSide(color: widget.fillColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: widget.borderInput ?? OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColor.red)
          ),
        ),
    );
  }
}
