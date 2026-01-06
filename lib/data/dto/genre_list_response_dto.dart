import 'package:json_annotation/json_annotation.dart';

import 'genre_dto_v1.dart';

part 'genre_list_response_dto.g.dart';

@JsonSerializable()
class GenreListResponseDto {
  final List<GenreDtoV1> genres;

  GenreListResponseDto({required this.genres});

  factory GenreListResponseDto.fromJson(Map<String, dynamic> json) => _$GenreListResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenreListResponseDtoToJson(this);
}
