import 'package:boby_ai/data/dto/genre_dto_v1.dart';
import 'package:boby_ai/data/dto/genre_dto_v2.dart';
import 'package:boby_ai/domain/entity/genre.dart';

extension GenreDtoV1Mapper on GenreDtoV1 {
  Genre toDomain() => Genre(id: id, name: name);
}

extension GenreDtoV2Mapper on GenreDtoV2 {
  Genre toDomain() => Genre(id: genreId, name: genreName);
}
