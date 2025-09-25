import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A widget that displays a transparent container with ellipse images
/// Used for creating a decorative background effect
class TransparentContainer extends StatelessWidget {
  const TransparentContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Top-right ellipse
        Positioned(
          top: -40.h,
          right: 0,
          child: Image.asset('assets/images/Ellipse_1.png'),
        ),

        // Bottom-left ellipse
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset('assets/images/Ellipse_2.png'),
        ),
      ],
    );
  }
}