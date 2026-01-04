// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_response_dto_v1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResponseDtoV1 _$MovieListResponseDtoV1FromJson(
  Map<String, dynamic> json,
) => MovieListResponseDtoV1(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => MovieDtoV1.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$MovieListResponseDtoV1ToJson(
  MovieListResponseDtoV1 instance,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
};
