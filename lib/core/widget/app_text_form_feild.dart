import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theming/style.dart';
import '../theming/colors.dart';

class AppTextFormFeildWidget extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? backgroundcolor;
  final TextStyle? textStyle;

  const AppTextFormFeildWidget({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.obscureText,
    this.contentPadding,
    this.suffixIcon,
    this.keyboardType,
    this.enabledBorder,
    this.focusedBorder,
    this.backgroundcolor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        hintText: hintText,
        //icon: Icon(Icons.email),
        suffixIcon: suffixIcon,
        isDense: true,
        hintStyle: hintStyle ?? TextStyles.font14RegularLighterGray,

        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightPrimary,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedErrorBorder:
            focusedBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        filled: true,
        fillColor: ColorsManager.backgroundcolor,
      ),
      style: TextStyles.font14MediumDarkBlue,
    );
  }
}
