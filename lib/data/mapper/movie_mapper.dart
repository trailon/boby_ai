import 'package:boby_ai/data/dto/movie_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_dto_v2.dart';
import 'package:boby_ai/domain/entity/movie.dart';

extension MovieMapper on MovieDtoV1 {
  Movie toDomain() => Movie(id: id, title: title, posterPath: posterPath, genreIds: genreIds);
}

extension MovieDtoV2Mapper on MovieDtoV2 {
  Movie toDomain() => Movie(id: movieId, title: movieName, posterPath: movieImages.poster, genreIds: genreIds);
}
