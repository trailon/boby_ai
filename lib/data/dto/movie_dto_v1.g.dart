// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto_v1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDtoV1 _$MovieDtoV1FromJson(Map<String, dynamic> json) => MovieDtoV1(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  posterPath: json['poster_path'] as String,
  genreIds: (json['genre_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$MovieDtoV1ToJson(MovieDtoV1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'genre_ids': instance.genreIds,
    };
