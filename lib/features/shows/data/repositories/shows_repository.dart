import 'package:cleanarch/features/shows/data/models/character.dart';
import 'package:cleanarch/features/shows/data/models/shows_response_model.dart';

abstract class ShowsRepository {
  Future<List<ShowResponseModel>> getShows();

  Future<ShowResponseModel> getShowDetails(int id);

  Future<List<ShowResponseModel>> search(String query);

  Future<List<ShowResponseModel>> getShowByGenre(String genre);

  Future<List<ShowResponseModel>> getTopRated();

  Future<List<ShowResponseModel>> getMostPopular();

  Future<List<ShowResponseModel>> getTrending();

  Future<Character> getCharacters(int showId);
}
