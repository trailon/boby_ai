import 'package:json_annotation/json_annotation.dart';

part 'genre_dto_v1.g.dart';

@JsonSerializable()
class GenreDtoV1 {
  final int id;
  final String name;

  GenreDtoV1({required this.id, required this.name});

  factory GenreDtoV1.fromJson(Map<String, dynamic> json) => _$GenreDtoV1FromJson(json);

  Map<String, dynamic> toJson() => _$GenreDtoV1ToJson(this);
}
