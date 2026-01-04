abstract class OnboardingLocalSource {
  Future<void> saveFavoriteMovieIds(Set<int> ids);
  Future<Set<int>> getFavoriteMovieIds();

  Future<void> saveGenreIds(Set<int> ids);
  Future<Set<int>> getGenreIds();
}