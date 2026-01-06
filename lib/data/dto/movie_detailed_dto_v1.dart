import 'package:boby_ai/domain/entity/movie_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detailed_dto_v1.g.dart';

@JsonSerializable()
class MovieDetailedDtoV1 {
  final int id;

  final String title;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  const MovieDetailedDtoV1({
    required this.id,
    required this.title,
    this.posterPath,
    required this.genreIds,
    required this.voteAverage,
  });

  factory MovieDetailedDtoV1.fromJson(Map<String, dynamic> json) => _$MovieDetailedDtoV1FromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailedDtoV1ToJson(this);

  MovieDetail toDomain() {
    return MovieDetail(id: id, title: title, posterPath: posterPath ?? '', genreIds: genreIds, rating: voteAverage);
  }
}
