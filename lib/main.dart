import 'dart:ui';

import 'package:cleanarch/core/widgets/background_container_with_star.dart';
import 'package:cleanarch/features/shows/presentation/screen/show_details_screen.dart';
import 'package:cleanarch/features/subscription/screens/subscriptions_screen.dart';
import 'package:cleanarch/features/subscription/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/widgets/background_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Raleway"),
      home: ScreenUtilInit(
    designSize: const Size(432, 901),
      minTextAdapt: true,
      splitScreenMode: true,
        builder:(context,child){ 
          return SubscriptionsScreen();
          
        //  return BackgroundContainerWithStar(
        //   child: Scaffold(backgroundColor: Colors.transparent, body: Column()),
        // );
  }),
    );
  }
}

Widget transparentContainer(BuildContext context) {
  return Stack(
    children: [
      // Top-right ellipse
      Positioned(
        top: -40,
        right: 0,
        child: Image.asset('assets/images/Ellipse_1.png'),
      ),

      // Bottom-left ellipse
      Align(
        alignment: Alignment.bottomLeft,
        child: Image.asset('assets/images/Ellipse_2.png'),
      ),

      // You can add more content here that will appear on top of the blurred background
    ],
  );
}
