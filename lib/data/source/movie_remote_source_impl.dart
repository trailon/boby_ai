import 'package:boby_ai/data/api/movie_api.dart';
import 'package:boby_ai/data/api/tmdb_api.dart';
import 'package:boby_ai/data/dto/movie_detailed_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/data/mapper/genre_mapper.dart';
import 'package:boby_ai/data/source/movie_remote_source.dart';
import 'package:boby_ai/domain/entity/genre.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MovieRemoteSource)
class MovieRemoteSourceImpl implements MovieRemoteSource {
  final MovieApi api;
  final TmdbApi tmdbApi;

  MovieRemoteSourceImpl(this.api, this.tmdbApi);

  @override
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> discover({required int page, String? genreQuery}) {
    return api.discoverMovies(page: page, withGenres: genreQuery);
  }

  @override
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> searchMovies({required String query, required int page}) {
    return api.searchMovies(query: query, page: page);
  }

  @override
  Future<List<Genre>> getGenres() async {
    final response = await tmdbApi.getGenres();
    return response.genres.map((e) => e.toDomain()).toList();
  }
}
