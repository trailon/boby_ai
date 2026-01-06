// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_response_dto_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreListResponseDtoV2 _$GenreListResponseDtoV2FromJson(
  Map<String, dynamic> json,
) => GenreListResponseDtoV2(
  movieGenres: (json['movie_genres'] as List<dynamic>)
      .map((e) => GenreDtoV2.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GenreListResponseDtoV2ToJson(
  GenreListResponseDtoV2 instance,
) => <String, dynamic>{'movie_genres': instance.movieGenres};
