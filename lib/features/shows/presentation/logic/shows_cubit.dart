import 'package:cleanarch/features/shows/domain/use_cases/get_shows_use_case.dart';
import 'package:cleanarch/features/shows/presentation/logic/shows_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowsCubit extends Cubit<ShowsStates> {
  final GetShowsUseCase _getShowsUseCase;

  ShowsCubit(this._getShowsUseCase) : super(ShowsInitialState()) {
    // Initialize data sequentially
    _initData();
  }
  
  Future<void> _initData() async {
    // First get categories
    await getCategories();
    // Then get shows
    await getShows();
  }

  Future<void> getShows() async {
    // Preserve categories if they exist in the current state
    final currentState = state;
    final currentCategories = currentState.categories;
    
    emit(ShowsLoadingState(categories: currentCategories));

    final results = await _getShowsUseCase.getShows();

    results.fold(
      (failure) {
        emit(ShowsErrorState(failure.message, categories: currentCategories));
      },
      (shows) {
        emit(ShowsSuccessState(shows, categories: currentCategories));
      },
    );
  }

  Future<void> getCategories() async {
    print('loading');
    
    // Preserve shows if they exist in the current state
    final currentState = state;
    final currentShows = currentState.shows;
    
    emit(CategoriesLoading(shows: currentShows));

    var results = await _getShowsUseCase.getCategories();

    results.fold(
      (failure) {
        print('error: ${failure.message}}');
        emit(CategoriesError(
          errorMessage: failure.message,
          shows: currentShows
        ));
      },
      (categories) {
        print(categories.length);
        emit(CategoriesLoaded(
          categories: categories,
          shows: currentShows
        ));
      },
    );
  }
}
