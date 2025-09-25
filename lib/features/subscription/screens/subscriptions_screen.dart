import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/core/widgets/background_container.dart';
import 'package:cleanarch/features/subscription/widgets/plan_card.dart';
import 'package:flutter/material.dart';

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
                  padding: const EdgeInsets.only(right: 40),
                  onPressed: () {},
                  icon: Ink(
                    padding: const EdgeInsets.all(2),
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
                  left: -140,
                  top: -100,
                  child: Image.asset(
                    'assets/images/Star_2.png',
                    fit: BoxFit.fill,
                  ),
                ),

                Positioned(
                  top: 100,
                  left: 100,
                  right: 100,
                  child: SizedBox(
                    height: 250,
                    width: 250,
                    child: Image.asset(
                      'assets/images/payment_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  right: -145,
                  top: 200,
                  child: Image.asset(
                    'assets/images/Star_1.png',
                    fit: BoxFit.fill,
                  ),
                ),

                Positioned(
                  top: 350,
                  right: 50,
                  left: 50,
                  child: Text(
                    'Seamless Anime \nExperiencem Ad-Free.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font24DarkPurpleBold,
                  ),
                ),

                Positioned(
                  top: 420,
                  right: 50,
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      'Enjoy unlimited anime streaming without interruptions.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font14LightGreyRegular,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 250,
                  right: 30,
                  left: 30,
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
                  bottom: 135,
                  right: 30,
                  left: 30,
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
                  bottom: 60,
                  right: 30,
                  left: 30,
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
