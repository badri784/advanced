import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/style.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttontext;
  final double? borderRadius;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.buttontext,
    this.borderRadius,
    this.backgroundColor,
    this.textStyle,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: verticalPadding ?? 14.h,
            horizontal: horizontalPadding ?? 12.w,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttontext,
        style: textStyle ?? TextStyles.font16SemiBoldwhite,
      ),
    );
  }
}
