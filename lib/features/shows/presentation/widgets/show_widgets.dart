import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A reusable category chip widget for displaying categories like "Action"
class CategoryChip extends StatelessWidget {
  final String? label;
  
  const CategoryChip({
    Key? key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: label != null 
        ? Text(
            label!,
            style: TextStyles.font13WhiteMedium,
          )
        : null,
    );
  }
}

/// A reusable stat row widget for displaying statistics with an icon and text
class StatRow extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color? iconColor;
  final TextStyle? textStyle;
  
  const StatRow({
    Key? key,
    required this.icon,
    required this.value,
    required this.label,
    this.iconColor = Colors.white,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor ?? AppColors.grey,
          size: 24.sp,
        ),
        RichText(
          text: TextSpan(
            style: textStyle ?? TextStyles.font14WhiteRegular,
            children: [
              TextSpan(
                text: value,
                style: textStyle != null ? TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                ) : null,
              ),
              TextSpan(
                text: " $label",
                style: textStyle != null ? TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                ) : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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