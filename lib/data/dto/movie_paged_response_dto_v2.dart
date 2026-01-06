import 'package:json_annotation/json_annotation.dart';

part 'movie_paged_response_dto_v2.g.dart';

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

@JsonSerializable(genericArgumentFactories: true)
class MoviePagedResponseDtoV2<T> {
  final int currentPage;

  @JsonKey(name: 'data')
  final List<T> datas;

  @JsonKey(name: 'page_count')
  final int pageCount;

  const MoviePagedResponseDtoV2({required this.currentPage, required this.datas, required this.pageCount});

  factory MoviePagedResponseDtoV2.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$MoviePagedResponseDtoV2FromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$MoviePagedResponseDtoV2ToJson(this, toJsonT);
}
