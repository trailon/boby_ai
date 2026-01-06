import 'package:boby_ai/domain/entity/movie_detail.dart';
import 'package:boby_ai/domain/repository/movie_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DiscoverMovies {
  final MovieRepository repository;

  DiscoverMovies(this.repository);

  Future<List<MovieDetail>> call({required int page, required Set<int> genreIds}) {
    return repository.discoverMovies(page: page, genreIds: genreIds);
  }
}
