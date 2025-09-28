import 'package:cleanarch/core/error/failures.dart';
import 'package:cleanarch/features/shows/data/data_sources/mock_data_source.dart';
import 'package:cleanarch/features/shows/data/models/shows_response_model.dart';
import 'package:cleanarch/features/shows/domain/entities/character_entity.dart';
import 'package:cleanarch/features/shows/domain/entities/show_response_entity.dart';
import 'package:cleanarch/features/shows/domain/repo/shows_repository.dart';
import 'package:fpdart/fpdart.dart';

class ShowsRepositoryImplemntation extends ShowsRepository {
  final MockShowDataSource mockShowDataSource;

  ShowsRepositoryImplemntation(this.mockShowDataSource);
  @override
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(
    int showId,
  ) async {
    try {
      final shows = await mockShowDataSource.fetchShows(showId: showId);

      // Extract characters from all shows and convert to CharacterEntity
      final List<CharacterEntity> characters = [];
      for (var show in shows) {
        if (show.showId == showId && show.characters != null) {
          // Map each Character to CharacterEntity
          for (var character in show.characters!) {
            characters.add(
              CharacterEntity(
                charachterId: character.charachterId,
                name: character.name,
                image: character.image,
              ),
            );
          }
        }
      }

      return Right(characters);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ShowResponseEntity>>> getShows() async {
    try {
      final List<ShowResponseModel> shows = await mockShowDataSource
          .fetchShows();
      final List<ShowResponseEntity> showEntity = [];
      for (var show in shows) {
        showEntity.add(
          ShowResponseEntity(
            showId: show.showId,
            title: show.title,
            description: show.description,
            genre: show.genre,
            imageUrl: show.imageUrl,
            claps: show.claps,
            seasons: show.seasons,
            characters: show.characters!
                .map(
                  (char) => CharacterEntity(
                    charachterId: char.charachterId,
                    name: char.name,
                    image: char.image,
                  ),
                )
                .toList(),
          ),
        );
      }

      return Right(showEntity);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ShowResponseEntity>>> getShowByGenre(
    String genre,
  ) {
    // TODO: implement getShowByGenre
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ShowResponseEntity>> getShowDetails(int id) {
    // TODO: implement getShowDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ShowResponseEntity>>> getMostPopular() {
    // TODO: implement getShows
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ShowResponseEntity>>> getTopRated() {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ShowResponseEntity>>> getTrending() {
    // TODO: implement getTrending
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ShowResponseEntity>>> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
