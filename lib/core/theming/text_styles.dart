

import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/font_weight_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {

  static TextStyle font16DarkPurpleBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.darkPurple);



  static TextStyle font22DarkPurpleBold=TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkPurple
  );

  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.darkerPurple);


static TextStyle font14LightGreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGrey
);


}