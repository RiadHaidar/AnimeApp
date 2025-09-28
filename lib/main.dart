import 'dart:ui';

import 'package:cleanarch/core/di/dependency_injection.dart';
import 'package:cleanarch/features/shows/domain/use_cases/get_shows_use_case.dart';
import 'package:cleanarch/features/shows/presentation/logic/shows_cubit.dart';
import 'package:cleanarch/features/shows/presentation/screen/shows_screen.dart';
import 'package:cleanarch/features/shows/presentation/screen/show_details_screen.dart';
import 'package:cleanarch/features/subscription/screens/subscriptions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup(); // Initialize dependency injection
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
        builder: (context, child) {
          return BlocProvider(
            create: (context) => ShowsCubit(getIt<GetShowsUseCase>())..getCategories()..getShows(),
            child: const ShowsScreen(),
          );
        },
      ),
    );
  }
}
