// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_paged_response_dto_v1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviePagedResponseDtoV1<T> _$MoviePagedResponseDtoV1FromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => MoviePagedResponseDtoV1<T>(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$MoviePagedResponseDtoV1ToJson<T>(
  MoviePagedResponseDtoV1<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results.map(toJsonT).toList(),
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};
