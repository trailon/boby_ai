import 'package:json_annotation/json_annotation.dart';

import 'genre_dto.dart';

part 'genre_list_response_dto.g.dart';

@JsonSerializable()
class GenreListResponseDto {
  final List<GenreDto> genres;

  GenreListResponseDto({required this.genres});

  factory GenreListResponseDto.fromJson(Map<String, dynamic> json) => _$GenreListResponseDtoFromJson(json);
}
