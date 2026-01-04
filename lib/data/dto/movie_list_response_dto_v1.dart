import 'package:json_annotation/json_annotation.dart';

import 'movie_dto_v1.dart';

part 'movie_list_response_dto_v1.g.dart';

@JsonSerializable()
class MovieListResponseDtoV1 {
  final int page;

  @JsonKey(name: 'results')
  final List<MovieDtoV1> results;

  @JsonKey(name: 'total_pages')
  final int totalPages;

  MovieListResponseDtoV1({required this.page, required this.results, required this.totalPages});

  factory MovieListResponseDtoV1.fromJson(Map<String, dynamic> json) => _$MovieListResponseDtoV1FromJson(json);
}
