import 'package:json_annotation/json_annotation.dart';

import 'genre_dto_v2.dart';

part 'genre_list_response_dto_v2.g.dart';

/* 
json example
{
  "movie_genres": [
    { "genre_id": 18, "genre_name": "Drama" },
    { "genre_id": 53, "genre_name": "Thriller" }
  ]
}
 */

@JsonSerializable()
class GenreListResponseDtoV2 {
  @JsonKey(name: 'movie_genres')
  final List<GenreDtoV2> movieGenres;

  GenreListResponseDtoV2({required this.movieGenres});

  factory GenreListResponseDtoV2.fromJson(Map<String, dynamic> json) => _$GenreListResponseDtoV2FromJson(json);

  Map<String, dynamic> toJson() => _$GenreListResponseDtoV2ToJson(this);
}
