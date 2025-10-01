


import 'package:cleanarch/features/shows/domain/entities/show_response_entity.dart';

abstract class ShowsStates {
  // Optional fields to store both categories and shows data
  final List<String>? categories;
  final List<ShowResponseEntity>? shows;
  
  ShowsStates({this.categories, this.shows});
}


class ShowsInitialState extends ShowsStates {}


class ShowsLoadingState extends ShowsStates {
  ShowsLoadingState({List<String>? categories}) : super(categories: categories);
}

class ShowsSuccessState extends ShowsStates {
  @override
  final List<ShowResponseEntity> shows;
  
  ShowsSuccessState(this.shows, {List<String>? categories}) 
      : super(categories: categories, shows: shows);
}

class ShowsErrorState extends ShowsStates {
  final String error;
  
  ShowsErrorState(this.error, {List<String>? categories}) 
      : super(categories: categories);
}



class TopRatedShowsLoading extends ShowsStates {
  TopRatedShowsLoading({List<String>? categories, List<ShowResponseEntity>? shows}) 
      : super(categories: categories, shows: shows);
}

class TopRatedShowsLoaded extends ShowsStates {
  final List<ShowResponseEntity> topRatedShows;
  
  TopRatedShowsLoaded({
    required this.topRatedShows, 
    List<String>? categories,
    List<ShowResponseEntity>? shows
  }) : super(categories: categories, shows: shows);
}

class TopRatedShowsError extends ShowsStates {
  final String errorMessage;
  
  TopRatedShowsError({
    required this.errorMessage,
    List<String>? categories,
    List<ShowResponseEntity>? shows
  }) : super(categories: categories, shows: shows);
}



class ShowDetailsLoading extends ShowsStates {
  ShowDetailsLoading({List<String>? categories, List<ShowResponseEntity>? shows}) 
      : super(categories: categories, shows: shows);
}

class ShowDetailsLoaded extends ShowsStates {
  final ShowResponseEntity show;
  
  ShowDetailsLoaded({
    required this.show,
    List<String>? categories,
    List<ShowResponseEntity>? shows
  }) : super(categories: categories, shows: shows);
}

class ShowDetailsError extends ShowsStates {
  final String errorMessage;
  
  ShowDetailsError({
    required this.errorMessage,
    List<String>? categories,
    List<ShowResponseEntity>? shows
  }) : super(categories: categories, shows: shows);
}


class CategoriesLoading extends ShowsStates {
  CategoriesLoading({List<ShowResponseEntity>? shows}) : super(shows: shows);
}

class CategoriesLoaded extends ShowsStates {
  @override
  final List<String> categories;
  
  CategoriesLoaded({
    required this.categories,
    List<ShowResponseEntity>? shows
  }) : super(categories: categories, shows: shows);
}

class CategoriesError extends ShowsStates {
  final String errorMessage;
  
  CategoriesError({
    required this.errorMessage,
    List<ShowResponseEntity>? shows
  }) : super(shows: shows);
}