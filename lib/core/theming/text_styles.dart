import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {


  static TextStyle font12DarkGreyMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.darkGrey,
  );
  static TextStyle font13WhiteMedium = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeightHelper.medium, color: Colors.white);
  static TextStyle font14WhieteBoldTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );

  static TextStyle font14WhiteRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );

  static TextStyle font15WhiteSemiBold = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

    static TextStyle font16WhieteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );


  static TextStyle font16WhieteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );


  static TextStyle font14DarkPurpleBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkPurple,
  );
  static TextStyle font16DarkPurpleBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkPurple,
  );

    static TextStyle font16DarkPurpleSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.darkPurple,
  );

  static TextStyle font22DarkPurpleBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkPurple,
  );

  static TextStyle font24DarkPurpleBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkerPurple,
  );

  static TextStyle font24DarkBlack = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );



  static TextStyle font14LightGreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGrey,
  );


//darkestGrey

static TextStyle font14DarkestGreySemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.darkestGrey,
  );
  static TextStyle font14LightPurpleBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.lightestPurple
  );


   static TextStyle font14PurpleBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.purple
  );


}
