// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDtoV2 _$MovieDtoV2FromJson(Map<String, dynamic> json) => MovieDtoV2(
  movieId: (json['movieId'] as num).toInt(),
  movieName: json['movieName'] as String,
  movieImages: MovieImagesDtoV2.fromJson(
    json['images'] as Map<String, dynamic>,
  ),
  genreIds: (json['genre_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$MovieDtoV2ToJson(MovieDtoV2 instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'movieName': instance.movieName,
      'images': instance.movieImages,
      'genre_ids': instance.genreIds,
    };
