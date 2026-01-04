import 'package:injectable/injectable.dart';

import '../../domain/entity/genre.dart';
import '../../domain/entity/movie.dart';
import '../../domain/repository/onboarding_repository.dart';
import '../api/tmdb_api.dart';
import '../mapper/genre_mapper.dart';
import '../mapper/movie_mapper.dart';
import '../source/onboarding_local_source.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  final TmdbApi api;
  final OnboardingLocalSource localSource;

  OnboardingRepositoryImpl({required this.api, required this.localSource});

  @override
  Future<List<Movie>> getPopularMovies(int page) async {
    final response = await api.getPopularMovies(page);
    return response.results.map((e) => e.toDomain()).toList();
  }

  @override
  Future<List<Genre>> getGenres() async {
    final response = await api.getGenres();
    return response.genres.map((e) => e.toDomain()).toList();
  }

  @override
  Future<void> saveFavoriteMovieIds(Set<int> ids) {
    return localSource.saveFavoriteMovieIds(ids);
  }

  @override
  Future<void> saveGenreIds(Set<int> ids) {
    return localSource.saveGenreIds(ids);
  }

  @override
  Future<Set<int>> getSavedFavoriteMovieIds() {
    return localSource.getFavoriteMovieIds();
  }

  @override
  Future<Set<int>> getSavedGenreIds() {
    return localSource.getGenreIds();
  }
}
