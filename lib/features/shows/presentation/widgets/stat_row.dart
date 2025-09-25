import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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