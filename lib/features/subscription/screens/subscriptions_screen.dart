import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/core/widgets/background_container.dart';
import 'package:cleanarch/features/subscription/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundContainer(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Upgrade Plan',
                style: TextStyles.font22DarkPurpleBold,
              ),
              actions: [
                IconButton(
                  padding: EdgeInsets.only(right: 40.w),
                  onPressed: () {},
                  icon: Ink(
                    padding: EdgeInsets.all(2.r),
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(),
                    ),
                    child: const Icon(Icons.close),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Positioned(
                  left: -140.w,
                  top: -100.h,
                  child: Image.asset(
                    'assets/images/Star_2.png',
                    fit: BoxFit.fill,
                  ),
                ),

                Positioned(
                  top: 100.h,
                  left: 100.w,
                  right: 100.w,
                  child: SizedBox(
                    height: 250.h,
                    width: 250.w,
                    child: Image.asset(
                      'assets/images/payment_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  right: -145.w,
                  top: 200.h,
                  child: Image.asset(
                    'assets/images/Star_1.png',
                    fit: BoxFit.fill,
                  ),
                ),

                Positioned(
                  top: 350.h,
                  right: 50.w,
                  left: 50.w,
                  child: Text(
                    'Seamless Anime \nExperiencem Ad-Free.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font24DarkPurpleBold,
                  ),
                ),

                Positioned(
                  top: 420.h,
                  right: 50.w,
                  child: SizedBox(
                    width: 300.w,
                    child: Text(
                      'Enjoy unlimited anime streaming without interruptions.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font14LightGreyRegular,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 250.h,
                  right: 30.w,
                  left: 30.w,
                  child: PlanCard(
                    planTitle: 'Monthly',
                    priceText: '\$5 USD',
                    periodText: '/Month',
                    featureText: 'Include Family Sharing',
                    backgroundColor: AppColors.darkerPurple,
                    iconColor: AppColors.darkerPurple,
                    iconBackgroundColor: AppColors.lightPurple,
                    isSelected: true,
                    imagePath: 'assets/images/files_folders.png',
                  ),
                ),

                Positioned(
                  bottom: 135.h,
                  right: 30.w,
                  left: 30.w,
                  child: PlanCard(
                    planTitle: 'Annually',
                    planTitleStyle: TextStyles.font16DarkPurpleBold,
                    priceTextStyle: TextStyles.font16DarkPurpleBold,
                    priceText: '\$50 USD',
                    periodText: '/Year',
                    featureText: 'Include Family Sharing',
                    backgroundColor: Colors.white,
                    iconColor: AppColors.darkPurple,
                    iconBackgroundColor: Colors.white,
                    isSelected: false,
                    imagePath: 'assets/images/files_folders.png',
                  ),
                ),

                Positioned(
                  bottom: 60.h,
                  right: 30.w,
                  left: 30.w,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all<double>(0),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        AppColors.purple,
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Continue', style: TextStyles.font16WhieteBold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
