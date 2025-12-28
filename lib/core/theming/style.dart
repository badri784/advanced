import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theming/colors.dart';
import 'package:project/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32BoldBlue = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font16interwhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle font12interblack = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.black,
  );
  static TextStyle font24BoldBlue = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14RegularGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkGreyForWelcomeText,
  );
}
