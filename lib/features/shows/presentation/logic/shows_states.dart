


import 'package:cleanarch/features/shows/domain/entities/show_response_entity.dart';

abstract class ShowsStates {}


class ShowsInitialState extends ShowsStates {}


class ShowsLoadingState extends ShowsStates {}

class ShowsSuccessState extends ShowsStates {
  final List<ShowResponseEntity> shows;
  ShowsSuccessState(this.shows);
}

class ShowsErrorState extends ShowsStates {
  final String error;
  ShowsErrorState(this.error);
}



class TopRatedShowsLoading extends ShowsStates {}
class TopRatedShowsLoaded extends ShowsStates {
  final List<ShowResponseEntity> topRatedShows;
  TopRatedShowsLoaded({required this.topRatedShows});
}
class TopRatedShowsError extends ShowsStates {
  final String errorMessage;
  TopRatedShowsError({required this.errorMessage});
}



class ShowDetailsLoading extends ShowsStates {}
class ShowDetailsLoaded extends ShowsStates {
  final ShowResponseEntity show;
  ShowDetailsLoaded({required this.show});
}
class ShowDetailsError extends ShowsStates {
  final String errorMessage;
  ShowDetailsError({required this.errorMessage});
}


class CategoriesLoading extends ShowsStates {}
class CategoriesLoaded extends ShowsStates {
  final List<String> categories;
  CategoriesLoaded({required this.categories});
}
class CategoriesError extends ShowsStates {
  final String errorMessage;
  CategoriesError({required this.errorMessage});
}