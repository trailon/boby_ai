import 'package:json_annotation/json_annotation.dart';

part 'genre_dto_v2.g.dart';

/* 
json example
{
  "genre_id": 18,
  "genre_name": "Drama"
}
 */

@JsonSerializable()
class GenreDtoV2 {
  @JsonKey(name: 'genre_id')
  final int genreId;
  @JsonKey(name: 'genre_name')
  final String genreName;

  GenreDtoV2({required this.genreId, required this.genreName});

  factory GenreDtoV2.fromJson(Map<String, dynamic> json) => _$GenreDtoV2FromJson(json);

  Map<String, dynamic> toJson() => _$GenreDtoV2ToJson(this);
}
