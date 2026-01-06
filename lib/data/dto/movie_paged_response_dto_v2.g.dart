// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_paged_response_dto_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviePagedResponseDtoV2<T> _$MoviePagedResponseDtoV2FromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => MoviePagedResponseDtoV2<T>(
  currentPage: (json['currentPage'] as num).toInt(),
  datas: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  pageCount: (json['page_count'] as num).toInt(),
);

Map<String, dynamic> _$MoviePagedResponseDtoV2ToJson<T>(
  MoviePagedResponseDtoV2<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'data': instance.datas.map(toJsonT).toList(),
  'page_count': instance.pageCount,
};
