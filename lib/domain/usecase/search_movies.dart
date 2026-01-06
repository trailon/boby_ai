import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';
import 'package:boby_ai/domain/repository/movie_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchMovies {
  final MovieRepository repository;

  SearchMovies(this.repository);

  Future<MoviePagedResponseDtoV1<MovieDetail>> call({required String query, required int page}) {
    return repository.searchMovies(query: query, page: page);
  }
}
