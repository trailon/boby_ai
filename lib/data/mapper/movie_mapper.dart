import 'package:boby_ai/data/dto/movie_dto_v1.dart';
import 'package:boby_ai/domain/entity/movie.dart';

extension MovieMapper on MovieDtoV1 {
  Movie toDomain() => Movie(id: id, title: title, posterPath: posterPath, genreIds: genreIds);
}
