import 'package:boby_ai/domain/entity/genre.dart';
import 'package:boby_ai/domain/repository/movie_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllGenres {
  final MovieRepository repository;

  GetAllGenres(this.repository);

  Future<List<Genre>> call() {
    return repository.getGenres();
  }
}
