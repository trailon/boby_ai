import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding_local_source.dart';

@LazySingleton(as: OnboardingLocalSource)
class OnboardingLocalSourceImpl implements OnboardingLocalSource {
  static const _favoriteMoviesKey = 'onboarding_favorite_movies';
  static const _genresKey = 'onboarding_genres';

  final SharedPreferences prefs;

  OnboardingLocalSourceImpl(this.prefs);

  @override
  Future<void> saveFavoriteMovieIds(Set<int> ids) async {
    await prefs.setStringList(_favoriteMoviesKey, ids.map((e) => e.toString()).toList());
  }

  @override
  Future<Set<int>> getFavoriteMovieIds() async {
    final list = prefs.getStringList(_favoriteMoviesKey) ?? [];
    return list.map(int.parse).toSet();
  }

  @override
  Future<void> saveGenreIds(Set<int> ids) async {
    await prefs.setStringList(_genresKey, ids.map((e) => e.toString()).toList());
  }

  @override
  Future<Set<int>> getGenreIds() async {
    final list = prefs.getStringList(_genresKey) ?? [];
    return list.map(int.parse).toSet();
  }
}
