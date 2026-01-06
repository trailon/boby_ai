import 'package:boby_ai/domain/entity/movie_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detailed_dto_v2.g.dart';

/* 
json example
{
  "movie_id": 123,
  "name": "Fight Club",
  "images": {
    "poster": "/abc.jpg"
  },
  "genres": [
    { "id": 18 },
    { "id": 53 }
  ]
}
 */

@JsonSerializable()
class MovieDetailedDtoV2 {
  final int movieId;

  final String name;

  @JsonKey(name: 'images')
  final MovieImagesDtoV2 images;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  const MovieDetailedDtoV2({required this.movieId, required this.name, required this.images, required this.genreIds});

  factory MovieDetailedDtoV2.fromJson(Map<String, dynamic> json) => _$MovieDetailedDtoV2FromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailedDtoV2ToJson(this);

  MovieDetail toDomain() {
    return MovieDetail(id: movieId, title: name, posterPath: images.poster, genreIds: genreIds, rating: 0);
  }
}

@JsonSerializable()
class MovieImagesDtoV2 {
  final String poster;
  final String backdrop;
  final String thumbnail;
  const MovieImagesDtoV2({required this.poster, required this.backdrop, required this.thumbnail});

  factory MovieImagesDtoV2.fromJson(Map<String, dynamic> json) => _$MovieImagesDtoV2FromJson(json);

  Map<String, dynamic> toJson() => _$MovieImagesDtoV2ToJson(this);
}
