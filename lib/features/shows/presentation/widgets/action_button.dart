import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A reusable action button widget for bottom navigation actions
class ActionButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  
  const ActionButton({
    Key? key,
    this.icon,
    required this.label,
    required this.backgroundColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: 170.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(37.r),
      ),
      child: icon != null 
        ? TextButton.icon(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: Colors.white,
              size: 24.sp,
            ),
            label: Text(
              label,
              style: TextStyles.font15WhiteSemiBold,
            ),
          )
        : TextButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyles.font15WhiteSemiBold,
            ),
          ),
    );
  }
}