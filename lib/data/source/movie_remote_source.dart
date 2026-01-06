import 'package:boby_ai/data/dto/movie_detailed_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/domain/entity/genre.dart';

abstract class MovieRemoteSource {
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> discover({required int page, String? genreQuery});

  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> searchMovies({required String query, required int page});

  Future<List<Genre>> getGenres();
}
