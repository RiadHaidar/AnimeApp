import 'package:cleanarch/core/di/dependency_injection.dart';
import 'package:cleanarch/core/theming/app_colors.dart';
import 'package:cleanarch/core/theming/text_styles.dart';
import 'package:cleanarch/core/widgets/background_container_with_star.dart';
import 'package:cleanarch/features/shows/domain/use_cases/get_shows_use_case.dart';
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
    return


          BlocProvider(
      create: (context) => ShowsCubit(getIt<GetShowsUseCase>())
   ,
  
      child: BackgroundContainerWithStar(
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
                    print('Categories BlocBuilder state: $state');
                    
                    // Show loading indicator when categories are loading
                    if (state is CategoriesLoading) {
                      print('CategoriesLoading');
                      return Center(
                        child: CircularProgressIndicator(
                          color: AppColors.purple,
                        ),
                      );
                    } 
                    
                    // If we have categories in any state, show them
                    if (state.categories != null && state.categories!.isNotEmpty) {
                      print('Categories available: ${state.categories!.length}');
                      return CategoryList(categories: state.categories!);
                    } 
                    
                    // Handle specific error state
                    if (state is CategoriesError) {
                      print('CategoriesError');
                      return Center(child: Text(state.errorMessage));
                    }
                    
                    print('######state $state');
                    return SizedBox.shrink();
                  },
                ),

                SizedBox(height: 15.h),

                // Shows list widget
                BlocBuilder<ShowsCubit, ShowsStates>(
                  builder: (context, state) {
                    print('Shows BlocBuilder state: $state');
                    
                    // Show loading indicator when shows are loading
                    if (state is ShowsLoadingState) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: AppColors.purple,
                        ),
                      );
                    } 
                    
                    // If we have shows in the state, show them
                    if (state is ShowsSuccessState) {
                      return ShowsListView(shows: state.shows);
                    } 
                    
                    // Handle error state
                    if (state is ShowsErrorState) {
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
        ),
      ),
    );
  }
}
