import 'package:cleanarch/core/di/dependency_injection.dart';
import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/features/shows/domain/use_cases/get_shows_use_case.dart';
import 'package:cleanarch/features/shows/presentation/logic/shows_cubit.dart';
import 'package:cleanarch/features/shows/presentation/screen/shows_screen.dart';
import 'package:cleanarch/features/subscription/screens/subscriptions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AnimeApp extends StatefulWidget {
  const AnimeApp({super.key});

  @override
  State<AnimeApp> createState() => _AnimeAppState();
}

class _AnimeAppState extends State<AnimeApp> {
  int selectedIndex = 0;
  List<Widget> screens = [
    ShowsScreen(),
    SubscriptionsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            print('clicked');
            selectedIndex = index;
          });
        },
        selectedColorOpacity: 1,
        items: [
          SalomonBottomBarItem(
            selectedColor: AppColors.purple,
            unselectedColor: Colors.grey,
            icon: Image.asset('assets/icons/home.png'),
            title: Text('Home', style: TextStyles.font16WhieteSemiBold),
          ),
          SalomonBottomBarItem(
            selectedColor: AppColors.purple,
            unselectedColor: Colors.grey,
            icon: Image.asset('assets/icons/Group.png'),
            title:  Text('Subscriptions',style: TextStyles.font16WhieteSemiBold),
          ),
          SalomonBottomBarItem(
            selectedColor: AppColors.purple,
            unselectedColor: Colors.grey,
            icon: Image.asset('assets/icons/search-normal.png'),
            title:  Text('Search',style: TextStyles.font16WhieteSemiBold),
          ),
          SalomonBottomBarItem(
            selectedColor: AppColors.purple,
            unselectedColor: Colors.grey,
            icon: Image.asset('assets/icons/planet.png'),
            title:  Text('Global',style: TextStyles.font16WhieteSemiBold),
          ),
          SalomonBottomBarItem(
            selectedColor: AppColors.purple,
            unselectedColor: Colors.grey,
            icon: Image.asset('assets/icons/setting.png'),
            title:  Text('Settings',style: TextStyles.font16WhieteSemiBold),
          ),
        ],
      ),
    );
  }
}
