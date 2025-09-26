import 'package:cleanarch/features/shows/domain/entities/character_entity.dart';

class ShowResponseEntity {
  final int? showId;
  final String? title;
  final String? description;
  final String? genre;
  final String? imageUrl;
  final int? claps;
  final int? seasons;
  final List<CharacterEntity>? characters;

  const ShowResponseEntity({
    this.showId,
    this.title,
    this.description,
    this.genre,
    this.imageUrl,
    this.claps,
    this.seasons,
    this.characters,
  });
}