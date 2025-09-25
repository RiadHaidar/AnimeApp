import 'dart:ui';
import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/features/shows/presentation/widgets/action_button.dart';
import 'package:cleanarch/features/shows/presentation/widgets/category_chip.dart';
import 'package:cleanarch/features/shows/presentation/widgets/stat_row.dart';
import 'package:cleanarch/features/shows/presentation/widgets/transparent_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDetailsScreen extends StatelessWidget {
  const ShowDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBody: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset('assets/images/ds.png', fit: BoxFit.cover),
                  ),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Color(0xff2C1E51)),
                        ),
                        ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                          child: const TransparentContainer(),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 80.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                CategoryChip(label: 'Dark Fantasy'),
                                CategoryChip(label: 'Action'),
                                CategoryChip(label: 'Adventure',),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: Divider(
                                thickness: 1.h,
                                color: Colors.grey.withValues(alpha: 0.3),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                StatRow(
                                  icon: Icons.visibility_sharp,
                                  value: "2.3M",
                                  label: "views",
                                  iconColor: AppColors.grey,
                                ),
                                StatRow(
                                  icon: Icons.handyman_outlined,
                                  value: "2K",
                                  label: "clap",
                                  textStyle: TextStyle(fontSize: 18),
                                ),
                                StatRow(
                                  icon: Icons.movie_filter_rounded,
                                  value: "4",
                                  label: "seasons",
                                  textStyle: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: Divider(
                                thickness: 1.h,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 170.h,
                left: 30.w,
                right: 30.w,
                child: Image.asset('assets/images/ds_logo.png'),
              ),
          
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff16103C),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ActionButton(
              icon: Icons.timer,
              label: 'Preview',
              backgroundColor: const Color(0xffD9D9D9).withOpacity(0.2),
              onPressed: () {},
            ),
            ActionButton(
                            icon: Icons.visibility,

              label: 'Watch Now',
              backgroundColor: const Color(0xff6758FE),
           onPressed: () {
             
           },
            ),
          ],
        ),
      ),
    );
  }
}