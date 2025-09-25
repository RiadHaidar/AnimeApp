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
              title: const Text(
                'Upgrade Plan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: 1.5,
                ),
              ),
              actions: [
                IconButton(
                  padding: const EdgeInsets.only(right: 40),
                  onPressed: () {}, 
                  icon: Ink(
                    padding: const EdgeInsets.all(2),
                    decoration: const ShapeDecoration(
                      color: Colors.white, 
                      shape: CircleBorder()
                    ),
                    child: const Icon(Icons.close)
                  )
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
                  child: const Text(
                    'Seamless Anime \nExperiencem Ad-Free.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff18153F),
                    ),
                  ),
                ),
                
                Positioned(
                  top: 420,
                  right: 50,
                  child: SizedBox(
                    width: 300,
                    child: const Text(
                      'Enjoy unlimited anime streaming without interruptions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffAEADB5),
                      ),
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
                    backgroundColor: const Color(0xff18153F), 
                    iconColor: const Color(0xff18153F),
                    iconBackgroundColor: const Color(0xff5436F8),
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
                    planTitleStyle: const TextStyle(
                      color: Color(0xff18153F),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    priceTextStyle: const TextStyle(
                      color: Color(0xff18153F),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    priceText: '\$50 USD', 
                    periodText: '/Year',
                    featureText: 'Include Family Sharing', 
                    backgroundColor: Colors.white, 
                    iconColor: const Color(0xff18153F),
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
                      elevation: MaterialStateProperty.all<double>(0),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff5436F8)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )
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