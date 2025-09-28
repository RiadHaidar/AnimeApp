import 'package:cleanarch/features/shows/domain/use_cases/get_shows_use_case.dart';
import 'package:cleanarch/features/shows/presentation/logic/shows_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowsCubit extends Cubit<ShowsStates> {
  final GetShowsUseCase _getShowsUseCase;

  ShowsCubit(this._getShowsUseCase) : super(ShowsInitialState());

  void getShows() async {
    emit(ShowsLoadingState());

    final results = await _getShowsUseCase.getShows();

    results.fold(
      (failure) {
        emit(ShowsErrorState(failure.message));
      },
      (shows) {
        emit(ShowsSuccessState(shows));
      },
    );
  }

  void getCategories() async {
    emit(CategoriesLoading());

    var results = await _getShowsUseCase.getCategories();

    results.fold(
      (failure) {
        emit(CategoriesError(errorMessage: failure.message));
      },
      (categories) {
        emit(CategoriesLoaded(categories: categories));
      },
    );
  }

  



}
