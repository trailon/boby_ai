// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detailed_dto_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailedDtoV2 _$MovieDetailedDtoV2FromJson(Map<String, dynamic> json) =>
    MovieDetailedDtoV2(
      movieId: (json['movieId'] as num).toInt(),
      name: json['name'] as String,
      images: MovieImagesDtoV2.fromJson(json['images'] as Map<String, dynamic>),
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$MovieDetailedDtoV2ToJson(MovieDetailedDtoV2 instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'name': instance.name,
      'images': instance.images,
      'genre_ids': instance.genreIds,
    };

MovieImagesDtoV2 _$MovieImagesDtoV2FromJson(Map<String, dynamic> json) =>
    MovieImagesDtoV2(
      poster: json['poster'] as String,
      backdrop: json['backdrop'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$MovieImagesDtoV2ToJson(MovieImagesDtoV2 instance) =>
    <String, dynamic>{
      'poster': instance.poster,
      'backdrop': instance.backdrop,
      'thumbnail': instance.thumbnail,
    };
