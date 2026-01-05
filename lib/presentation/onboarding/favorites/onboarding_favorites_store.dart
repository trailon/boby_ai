import 'package:boby_ai/app/router/router.dart';
import 'package:boby_ai/app/router/router.gr.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../domain/entity/movie.dart';
import '../../../../domain/usecase/get_popular_movies.dart';
import '../../../../domain/usecase/save_favorites.dart';

part 'onboarding_favorites_store.g.dart';

@injectable
class OnboardingFavoritesStore = OnboardingFavoritesStoreBase with _$OnboardingFavoritesStore;

abstract class OnboardingFavoritesStoreBase with Store {
  final GetPopularMovies getPopularMovies;
  final SaveFavorites saveFavorites;

  OnboardingFavoritesStoreBase({required this.getPopularMovies, required this.saveFavorites});

  @observable
  ObservableList<Movie> movies = ObservableList<Movie>();

  @observable
  ObservableSet<int> selectedMovieIds = ObservableSet<int>();

  @observable
  bool isLoading = false;

  @observable //? Error message received from the API but not handled by the UI due to figma design though can be handled via this string
  String? error;

  @observable
  int page = 1;

  @observable
  bool hasMore = true;

  @action
  Future<void> loadInitial() async {
    page = 1;
    hasMore = true;
    error = null;
    movies.clear();
    await _loadPage();
    FlutterNativeSplash.remove();
  }

  @action
  Future<void> loadMore() async {
    if (isLoading || !hasMore) return;
    await _loadPage();
  }

  @action
  Future<void> _loadPage() async {
    try {
      isLoading = true;
      final result = await getPopularMovies(page);

      movies.addAll(result);

      if (result.isEmpty) {
        hasMore = false;
      } else {
        page++;
      }
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
    }
  }

  @action
  void toggleSelection(int movieId) {
    selectedMovieIds.contains(movieId) ? selectedMovieIds.remove(movieId) : selectedMovieIds.add(movieId);
  }

  @action
  Future<void> submit() async {
    try {
      await saveFavorites(selectedMovieIds.toSet());
      appRouter.push(const OnboardingGenresRoute());
    } catch (e) {
      error = e.toString();
    }
  }
}
