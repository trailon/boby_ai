import 'package:boby_ai/data/dto/movie_detailed_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_detailed_dto_v2.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';

extension MovieDetailMapper on MovieDetailedDtoV1 {
  MovieDetail toDomain() =>
      MovieDetail(id: id, title: title, posterPath: posterPath ?? '', genreIds: genreIds, rating: voteAverage);
}

extension MovieDtoV2Mapper on MovieDetailedDtoV2 {
  MovieDetail toDomain() {
    return MovieDetail(id: movieId, title: name, posterPath: images.poster, genreIds: genreIds, rating: 0);
  }
}
