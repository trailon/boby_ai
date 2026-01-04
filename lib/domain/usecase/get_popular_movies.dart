import 'package:injectable/injectable.dart';

import '../entity/movie.dart';
import '../repository/onboarding_repository.dart';

@injectable
class GetPopularMovies {
  final OnboardingRepository repository;

  GetPopularMovies(this.repository);

  Future<List<Movie>> call(int page) {
    return repository.getPopularMovies(page);
  }
}
