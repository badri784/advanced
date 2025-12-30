import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/core/theming/colors.dart';
import 'package:project/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32BoldBlue = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font12RigularMainBlue = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font16MediumWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
  static TextStyle font16SemiBoldwhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font12interblack = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle fontinterblack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle font24BoldBlue = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14RegularGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkGreyForWelcomeText,
  );
  static TextStyle font14RegularLighterGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lighterGray,
  );
  static TextStyle font14MediumDarkBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: const Color.fromARGB(255, 0, 0, 0),
  );
  static TextStyle font11RegularLightGrayForText = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGrayForText,
  );
}
