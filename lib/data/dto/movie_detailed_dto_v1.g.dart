// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detailed_dto_v1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailedDtoV1 _$MovieDetailedDtoV1FromJson(Map<String, dynamic> json) =>
    MovieDetailedDtoV1(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieDetailedDtoV1ToJson(MovieDetailedDtoV1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'genre_ids': instance.genreIds,
      'vote_average': instance.voteAverage,
    };
