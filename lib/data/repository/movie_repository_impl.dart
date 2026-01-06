import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/data/mapper/movie_paged_response_detail_mapper.dart';
import 'package:boby_ai/data/source/movie_remote_source.dart';
import 'package:boby_ai/domain/entity/genre.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';
import 'package:boby_ai/domain/repository/movie_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteSource remote;

  MovieRepositoryImpl(this.remote);

  @override
  Future<List<MovieDetail>> discoverMovies({required int page, Set<int>? genreIds}) async {
    final genreQuery = genreIds == null || genreIds.isEmpty ? null : genreIds.join('|');

    final response = await remote.discover(page: page, genreQuery: genreQuery);

    return response.results.map((dto) => dto.toDomain()).toList();
  }

  @override
  Future<MoviePagedResponseDtoV1<MovieDetail>> searchMovies({required String query, required int page}) async {
    final dto = await remote.searchMovies(query: query, page: page);

    return dto.toDomain();
  }

  @override
  Future<List<Genre>> getGenres() async {
    final response = await remote.getGenres();
    return response;
  }
}
