import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/domain/entity/genre.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';

abstract class MovieRepository {
  Future<List<MovieDetail>> discoverMovies({required int page, Set<int>? genreIds});

  Future<MoviePagedResponseDtoV1<MovieDetail>> searchMovies({required String query, required int page});

  Future<List<Genre>> getGenres();
}
