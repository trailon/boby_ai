// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_response_dto_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResponseDtoV2 _$MovieListResponseDtoV2FromJson(
  Map<String, dynamic> json,
) => MovieListResponseDtoV2(
  currentPage: (json['currentPage'] as num).toInt(),
  datas: (json['data'] as List<dynamic>)
      .map((e) => MovieDtoV2.fromJson(e as Map<String, dynamic>))
      .toList(),
  pageCount: (json['page_count'] as num).toInt(),
);

Map<String, dynamic> _$MovieListResponseDtoV2ToJson(
  MovieListResponseDtoV2 instance,
) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'data': instance.datas,
  'page_count': instance.pageCount,
};
