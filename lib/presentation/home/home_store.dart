import 'dart:async';

import 'package:boby_ai/domain/entity/genre.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';
import 'package:boby_ai/domain/usecase/discover_movies.dart';
import 'package:boby_ai/domain/usecase/get_all_genres.dart';
import 'package:boby_ai/domain/usecase/get_saved_onboarding.dart';
import 'package:boby_ai/domain/usecase/search_movies.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

@injectable
class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final DiscoverMovies discoverMovies;
  // Even though it belongs to onboarding, it's used in home screen too for fetching saved genres locally
  final GetSavedOnboarding getSavedOnboarding;
  final SearchMovies searchMovies;
  final GetAllGenres getAllGenres;
  HomeStoreBase(this.discoverMovies, this.getSavedOnboarding, this.searchMovies, this.getAllGenres);

  @observable
  ObservableList<MovieDetail> forYouMovies = ObservableList();

  @observable
  ObservableMap<int, ObservableList<MovieDetail>> categoryMovies = ObservableMap();

  @observable
  bool isLoading = false;

  @observable
  bool hasMore = true;

  int _page = 1;

  Timer? _searchDebounce;

  @observable
  Set<int> initialGenres = {};

  @observable
  ObservableList<Genre> genres = ObservableList();

  @observable
  String searchQuery = '';

  @observable
  ObservableList<MovieDetail> searchResults = ObservableList();

  @observable
  bool isSearching = false;

  @action
  Future<void> init() async {
    initialGenres = await getSavedOnboarding.getGenres();
    genres = ObservableList.of(await getAllGenres());
    _page = 1;
    await loadInitial();
    await loadCategoryFeeds();
  }

  @action
  Future<void> loadCategoryFeeds() async {
    final futures = genres.map(_loadCategoryForGenre).toList();

    await Future.wait(futures);
  }

  Future<void> _loadCategoryForGenre(Genre genre) async {
    final movies = await discoverMovies(page: 1, genreIds: {genre.id});

    runInAction(() {
      categoryMovies[genre.id] = ObservableList.of(movies.take(9));
    });
  }

  @action
  Future<void> loadInitial() async {
    forYouMovies.clear();
    _page = 1;
    hasMore = true;
    await _load();
  }

  @action
  Future<void> loadNext() async {
    if (isLoading || !hasMore) return;
    await _load();
  }

  Future<void> _load() async {
    isLoading = true;

    final result = await discoverMovies(page: _page, genreIds: initialGenres);

    forYouMovies.addAll(result);
    hasMore = result.isNotEmpty;
    _page++;

    isLoading = false;
  }

  @action
  void onSearchChanged(String value) {
    searchQuery = value;

    if (value.trim().isEmpty) {
      searchResults.clear();
      isSearching = false;
      return;
    }

    isSearching = true;
    _debouncedSearch();
  }

  @action
  Future<void> search() async {
    final result = await searchMovies(query: searchQuery, page: 1);

    searchResults
      ..clear()
      ..addAll(result.results);
  }

  void _debouncedSearch() {
    _searchDebounce?.cancel();

    _searchDebounce = Timer(const Duration(milliseconds: 400), () => search());
  }
}
