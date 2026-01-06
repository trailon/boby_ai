// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreListResponseDto _$GenreListResponseDtoFromJson(
  Map<String, dynamic> json,
) => GenreListResponseDto(
  genres: (json['genres'] as List<dynamic>)
      .map((e) => GenreDtoV1.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GenreListResponseDtoToJson(
  GenreListResponseDto instance,
) => <String, dynamic>{'genres': instance.genres};
