


import 'package:classimia/utils/app_colors.dart';
import 'package:classimia/utils/style/app_style.dart';
import 'package:flutter/material.dart';


class CustomTextFormFiled extends StatelessWidget {
  final TextEditingController? controller;
  final dynamic validator;
  final dynamic onChanged;
  final TextInputAction? textInputAction;
  final String? hintText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;

  const CustomTextFormFiled({
    super.key,
    required this.controller,
    this.textInputAction,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.maxLines,
    this.onChanged,
    this.readOnly,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      onChanged: onChanged,
      maxLines: obscureText == true ? 1 : maxLines, // Set to 1 if obscured
      textAlign: TextAlign.justify,
      validator: validator,
      cursorColor: AppColors.appBlackColor,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: controller,
      obscureText: obscureText ?? false,
      style: myStyleInterMedium(context: context, color: AppColors.appBlackColor),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 15),
        hintText: hintText ?? "Full Name",
        hintStyle: myStyleInterMedium(context: context, color: AppColors.appBlackColor),
        filled: true,
        fillColor: AppColors.appWhiteColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.appWhiteColor),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.appWhiteColor),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.appWhiteColor),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

