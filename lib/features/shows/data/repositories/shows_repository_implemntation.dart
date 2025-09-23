


import 'package:cleanarch/features/shows/data/models/character.dart';
import 'package:cleanarch/features/shows/data/models/shows_response_model.dart';
import 'package:cleanarch/features/shows/data/repositories/shows_repository.dart';

class ShowsRepositoryImplemntation extends ShowsRepository {
  @override
  Future<Character> getCharacters(int showId) {
    // TODO: implement getCharacters
    throw UnimplementedError();
  }

  @override
  Future<List<ShowResponseModel>> getMostPopular() {
    // TODO: implement getMostPopular
    throw UnimplementedError();
  }

  @override
  Future<List<ShowResponseModel>> getShowByGenre(String genre) {
    // TODO: implement getShowByGenre
    throw UnimplementedError();
  }

  @override
  Future<ShowResponseModel> getShowDetails(int id) {
    // TODO: implement getShowDetails
    throw UnimplementedError();
  }

  @override
  Future<List<ShowResponseModel>> getShows() {
    // TODO: implement getShows
    throw UnimplementedError();
  }

  @override
  Future<List<ShowResponseModel>> getTopRated() {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<List<ShowResponseModel>> getTrending() {
    // TODO: implement getTrending
    throw UnimplementedError();
  }

  @override
  Future<List<ShowResponseModel>> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }

}