import 'package:boby_ai/data/dto/genre_dto.dart';
import 'package:boby_ai/domain/entity/genre.dart';

extension GenreMapper on GenreDto {
  Genre toDomain() => Genre(id: id, name: name);
}
