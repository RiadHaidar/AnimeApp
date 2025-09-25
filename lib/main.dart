import 'dart:ui';

import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/core/widgets/background_container_with_star.dart';
import 'package:cleanarch/features/shows/presentation/screen/show_details_screen.dart';
import 'package:cleanarch/features/subscription/screens/subscriptions_screen.dart';
import 'package:cleanarch/features/subscription/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
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
        builder: (context, child) {
          // return ShowDetailsScreen();

          return BackgroundContainerWithStar(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 100.h),
                    Text(
                      'Where Anime Comes Alive',
                      style: TextStyles.font24DarkPurpleBold,
                    ),
                    SizedBox(height: 20.h),

                    SizedBox(
                      width: double.infinity,
                      height: 28.h,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 5.h,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Text(
                                'Anime',
                                style: TextStyles.font14PurpleBold,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 350.h,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,

                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 287.h,
                                  width: 184.w,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12.r),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/dc.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Detective Conan",

                                  style: TextStyles.font14DarkPurpleBold,
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Mystrey',
                                  style: TextStyles.font12DarkGreyMedium,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Text(
                          'Top Characters',
                          style: TextStyles.font24DarkBlack,
                        ),
                      ],
                    ),
                                        SizedBox(height: 20.h),


                    SizedBox(
                      height: 140.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context,index)=> Padding(
                          padding:  EdgeInsets.symmetric(
                            horizontal: 10.w),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40.r,
                                backgroundImage: AssetImage(
                                  "assets/images/naruto.png",
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Naruto Uzumaki',
                          
                                style: TextStyles.font16DarkPurpleSemiBold,
                              ),
                              Text(
                                'Naruto',
                                style: TextStyles.font14DarkestGreySemiBold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              bottomNavigationBar: SalomonBottomBar(
            selectedColorOpacity: 1,

                items: [
                SalomonBottomBarItem(
                  selectedColor: AppColors.purple,
                  unselectedColor: Colors.grey,
                  icon: Image.asset('assets/icons/home.png'), 
                  title: Text('Home',
                  style: TextStyles.font16WhieteSemiBold,
                  )
                  
                  
                  ),
                SalomonBottomBarItem(
                                    selectedColor: AppColors.purple,

                                    unselectedColor: Colors.grey,

                  icon: Image.asset('assets/icons/Group.png'), 
                    title: Text('Subscriptions')),
                           SalomonBottomBarItem(
                                    selectedColor: AppColors.purple,

                                    unselectedColor: Colors.grey,

                  icon: Image.asset('assets/icons/search-normal.png'), 
                    title: Text('Search')),
                           SalomonBottomBarItem(
                                    selectedColor: AppColors.purple,

                                    unselectedColor: Colors.grey,

                  icon: Image.asset('assets/icons/planet.png'), 
                    title: Text('Global')),
                           SalomonBottomBarItem(
                                    selectedColor: AppColors.purple,

                                    unselectedColor: Colors.grey,

                  icon: Image.asset('assets/icons/setting.png'), 
                    title: Text('Settings')),

              ]),
            ),
          );
        },
      ),
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
