import 'package:boby_ai/domain/entity/genre.dart';
import 'package:boby_ai/domain/entity/movie.dart';

abstract class OnboardingRepository {
  Future<List<Movie>> getPopularMovies(int page);
  Future<List<Genre>> getGenres();

  Future<void> saveFavoriteMovieIds(Set<int> ids);
  Future<void> saveGenreIds(Set<int> ids);

  Future<Set<int>> getSavedFavoriteMovieIds();
  Future<Set<int>> getSavedGenreIds();
}
