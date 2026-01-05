import 'package:json_annotation/json_annotation.dart';

part 'movie_dto_v1.g.dart';

@JsonSerializable()
class MovieDtoV1 {
  final int id;
  final String title;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  MovieDtoV1({required this.id, required this.title, required this.posterPath, required this.genreIds});

  factory MovieDtoV1.fromJson(Map<String, dynamic> json) => _$MovieDtoV1FromJson(json);

  Map<String, dynamic> toJson() => _$MovieDtoV1ToJson(this);
}
