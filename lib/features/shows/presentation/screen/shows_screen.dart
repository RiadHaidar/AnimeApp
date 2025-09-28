import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/core/widgets/background_container_with_star.dart';
import 'package:cleanarch/features/shows/presentation/logic/shows_cubit.dart';
import 'package:cleanarch/features/shows/presentation/logic/shows_states.dart';
import 'package:cleanarch/features/shows/presentation/widgets/category_list.dart';
import 'package:cleanarch/features/shows/presentation/widgets/characters_list_view.dart';
import 'package:cleanarch/features/shows/presentation/widgets/shows_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ShowsScreen extends StatelessWidget {
  const ShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

              // Category list widget
              BlocBuilder<ShowsCubit, ShowsStates>(
                builder: (context, state) {
                  if (state is CategoriesLoading) {
                    return Center(
                      child: CircularProgressIndicator(color: AppColors.purple),
                    );
                  } else if (state is CategoriesLoaded) {
                    for (int i = 0; i < state.categories.length; i++) {
                      print(state.categories[i]);
                    }

                    return CategoryList(categories: state.categories);
                  } else if (state is CategoriesError) {
                    return Center(child: Text(state.errorMessage));
                  }
                  return SizedBox.shrink();
                },
              ),

              SizedBox(height: 15.h),

              // Shows list widget
              BlocBuilder<ShowsCubit, ShowsStates>(
                builder: (context, state) {
                  if (state is ShowsLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(color: AppColors.purple),
                    );
                  } else   if (state is ShowsSuccessState) {
                    for (int i = 0; i < state.shows.length; i++) {
                      print(state.shows[i].title);
                    }


                    return ShowsListView(shows: state.shows);
                  } else if (state is ShowsErrorState) {
                    return Center(child: Text(state.error));
                  } 
                  return const SizedBox.shrink();
                },
              ),

              SizedBox(height: 20.h),
              Row(
                children: [
                  Text('Top Characters', style: TextStyles.font24DarkBlack),
                ],
              ),
              SizedBox(height: 20.h),

              // Characters list widget
               CharactersListView(),
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
              title: Text('Home', style: TextStyles.font16WhieteSemiBold),
            ),
            SalomonBottomBarItem(
              selectedColor: AppColors.purple,
              unselectedColor: Colors.grey,
              icon: Image.asset('assets/icons/Group.png'),
              title: const Text('Subscriptions'),
            ),
            SalomonBottomBarItem(
              selectedColor: AppColors.purple,
              unselectedColor: Colors.grey,
              icon: Image.asset('assets/icons/search-normal.png'),
              title: const Text('Search'),
            ),
            SalomonBottomBarItem(
              selectedColor: AppColors.purple,
              unselectedColor: Colors.grey,
              icon: Image.asset('assets/icons/planet.png'),
              title: const Text('Global'),
            ),
            SalomonBottomBarItem(
              selectedColor: AppColors.purple,
              unselectedColor: Colors.grey,
              icon: Image.asset('assets/icons/setting.png'),
              title: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
