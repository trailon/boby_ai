import 'package:json_annotation/json_annotation.dart';

import 'movie_dto_v2.dart';

part 'movie_list_response_dto_v2.g.dart';

/* 
json example
{
  "current_page": 1,
  "data": [
    { "movie_id": 123, "movie_name": "Fight Club", "images": { "poster": "/abc.jpg" }, "genre_ids": [18, 53] }
  ],
  "page_count": 10
}
 */

@JsonSerializable()
class MovieListResponseDtoV2 {
  final int currentPage;

  @JsonKey(name: 'data')
  final List<MovieDtoV2> datas;

  @JsonKey(name: 'page_count')
  final int pageCount;

  MovieListResponseDtoV2({required this.currentPage, required this.datas, required this.pageCount});

  factory MovieListResponseDtoV2.fromJson(Map<String, dynamic> json) => _$MovieListResponseDtoV2FromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResponseDtoV2ToJson(this);
}
