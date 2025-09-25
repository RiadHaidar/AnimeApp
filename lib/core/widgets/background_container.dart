import 'package:flutter/material.dart';

/// A reusable widget that provides a gradient background container
/// 
/// This widget creates a container with a gradient from light purple to white
/// and can be used across the app for consistent styling.
class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffD3D6FF), Colors.white],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 0.7),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: child,
    );
  }
}