// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_dto_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreDtoV2 _$GenreDtoV2FromJson(Map<String, dynamic> json) => GenreDtoV2(
  genreId: (json['genre_id'] as num).toInt(),
  genreName: json['genre_name'] as String,
);

Map<String, dynamic> _$GenreDtoV2ToJson(GenreDtoV2 instance) =>
    <String, dynamic>{
      'genre_id': instance.genreId,
      'genre_name': instance.genreName,
    };
