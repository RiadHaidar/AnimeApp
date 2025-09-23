

import 'package:cleanarch/features/shows/data/models/character.dart';

class ShowResponseModel {
  int? showId;
  String? title;
  String? description;
  String? genre;
  double? rating;
  String? imageUrl;
  int? claps;
  int? seasons;
  int? views;
  List<Character>? characters;

  ShowResponseModel({
    this.showId,
    this.title,
    this.description,
    this.genre,
    this.rating,
    this.imageUrl,
    this.claps,
    this.seasons,
    this.views,
	this.characters});

}


