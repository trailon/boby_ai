import 'package:json_annotation/json_annotation.dart';

part 'movie_paged_response_dto_v1.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class MoviePagedResponseDtoV1<T> {
  final int page;

  @JsonKey(name: 'results')
  final List<T> results;

  @JsonKey(name: 'total_pages')
  final int totalPages;

  @JsonKey(name: 'total_results')
  final int totalResults;

  const MoviePagedResponseDtoV1({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MoviePagedResponseDtoV1.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$MoviePagedResponseDtoV1FromJson(json, fromJsonT);

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) =>
      _$MoviePagedResponseDtoV1ToJson(this, toJsonT);
}