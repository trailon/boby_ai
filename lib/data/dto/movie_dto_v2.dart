import 'package:boby_ai/data/dto/movie_detailed_dto_v2.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_dto_v2.g.dart';

/* 
json example
{
  "movie_id": 123,
  "movie_name": "Fight Club",
  "images": { "poster": "/abc.jpg" },
  "genre_ids": [18, 53]
}
 */

@JsonSerializable()
class MovieDtoV2 {
  final int movieId;
  final String movieName;

  @JsonKey(name: 'images')
  final MovieImagesDtoV2 movieImages;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  MovieDtoV2({required this.movieId, required this.movieName, required this.movieImages, required this.genreIds});

  factory MovieDtoV2.fromJson(Map<String, dynamic> json) => _$MovieDtoV2FromJson(json);

  Map<String, dynamic> toJson() => _$MovieDtoV2ToJson(this);
}
