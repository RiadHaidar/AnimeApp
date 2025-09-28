import 'package:cleanarch/core/error/failures.dart';
import 'package:cleanarch/features/shows/domain/entities/character_entity.dart';
import 'package:cleanarch/features/shows/domain/entities/show_response_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class ShowsRepository {
  Future<Either<Failure, List<ShowResponseEntity>>> getShows();

  Future<Either<Failure, ShowResponseEntity>> getShowDetails(int id);

  Future<Either<Failure, List<ShowResponseEntity>>> search(String query);

  Future<Either<Failure, List<ShowResponseEntity>>> getShowByGenre(String genre);

  Future<Either<Failure, List<ShowResponseEntity>>> getTopRated();

  Future<Either<Failure, List<ShowResponseEntity>>> getMostPopular();

  Future<Either<Failure, List<ShowResponseEntity>>> getTrending();

  Future<Either<Failure, List<CharacterEntity>>> getCharacters(int showId);


}
