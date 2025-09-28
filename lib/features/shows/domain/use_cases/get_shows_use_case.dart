

import 'package:cleanarch/core/error/failures.dart';
import 'package:cleanarch/features/shows/domain/entities/show_response_entity.dart';
import 'package:cleanarch/features/shows/domain/repo/shows_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetShowsUseCase {

  final ShowsRepository _showsRepository;
  GetShowsUseCase(this._showsRepository);


  Future<Either<Failure, List<ShowResponseEntity>>> getShows() {
    return _showsRepository.getShows();
  }
  
  Future<Either<Failure, List<ShowResponseEntity>>> getTopRatedShows({int minimumClaps = 100}) async {
    final showsResult = await _showsRepository.getShows();
    
    return showsResult.map((shows) => 
      shows.where((show) => show.claps != null && show.claps! >= minimumClaps)
          .toList()
          ..sort((a, b) => (b.claps ?? 0).compareTo(a.claps ?? 0))
    );
  }


   Future<Either<Failure, List<ShowResponseEntity>>>  getShowsByGenre(String genreName) async{
     final showsResult = await _showsRepository.getShows();

     return showsResult.map((shows) =>
       shows.where((show) => show.genre == genreName).toList());
   }

   Future<Either<Failure, ShowResponseEntity>> getShowDetails(int id) async{
     final showsResult = await _showsRepository.getShowDetails(id);


     return showsResult;
   }
   
   /// Returns a list of unique categories (genres) from all shows
   Future<Either<Failure, List<String>>> getCategories() async {
     final showsResult = await _showsRepository.getShows();
     
     return showsResult.map((shows) {
       // Extract unique genres using a Set
       final categoriesSet = shows
           .where((show) => show.genre != null && show.genre!.isNotEmpty)
           .map((show) => show.genre!)
           .toSet();
       
       return categoriesSet.toList();
     });
   }

}