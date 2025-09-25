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