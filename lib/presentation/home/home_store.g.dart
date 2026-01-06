// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$forYouMoviesAtom = Atom(
    name: 'HomeStoreBase.forYouMovies',
    context: context,
  );

  @override
  ObservableList<MovieDetail> get forYouMovies {
    _$forYouMoviesAtom.reportRead();
    return super.forYouMovies;
  }

  @override
  set forYouMovies(ObservableList<MovieDetail> value) {
    _$forYouMoviesAtom.reportWrite(value, super.forYouMovies, () {
      super.forYouMovies = value;
    });
  }

  late final _$categoryMoviesAtom = Atom(
    name: 'HomeStoreBase.categoryMovies',
    context: context,
  );

  @override
  ObservableMap<int, ObservableList<MovieDetail>> get categoryMovies {
    _$categoryMoviesAtom.reportRead();
    return super.categoryMovies;
  }

  @override
  set categoryMovies(ObservableMap<int, ObservableList<MovieDetail>> value) {
    _$categoryMoviesAtom.reportWrite(value, super.categoryMovies, () {
      super.categoryMovies = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'HomeStoreBase.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$hasMoreAtom = Atom(
    name: 'HomeStoreBase.hasMore',
    context: context,
  );

  @override
  bool get hasMore {
    _$hasMoreAtom.reportRead();
    return super.hasMore;
  }

  @override
  set hasMore(bool value) {
    _$hasMoreAtom.reportWrite(value, super.hasMore, () {
      super.hasMore = value;
    });
  }

  late final _$initialGenresAtom = Atom(
    name: 'HomeStoreBase.initialGenres',
    context: context,
  );

  @override
  Set<int> get initialGenres {
    _$initialGenresAtom.reportRead();
    return super.initialGenres;
  }

  @override
  set initialGenres(Set<int> value) {
    _$initialGenresAtom.reportWrite(value, super.initialGenres, () {
      super.initialGenres = value;
    });
  }

  late final _$genresAtom = Atom(
    name: 'HomeStoreBase.genres',
    context: context,
  );

  @override
  ObservableList<Genre> get genres {
    _$genresAtom.reportRead();
    return super.genres;
  }

  @override
  set genres(ObservableList<Genre> value) {
    _$genresAtom.reportWrite(value, super.genres, () {
      super.genres = value;
    });
  }

  late final _$searchQueryAtom = Atom(
    name: 'HomeStoreBase.searchQuery',
    context: context,
  );

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$searchResultsAtom = Atom(
    name: 'HomeStoreBase.searchResults',
    context: context,
  );

  @override
  ObservableList<MovieDetail> get searchResults {
    _$searchResultsAtom.reportRead();
    return super.searchResults;
  }

  @override
  set searchResults(ObservableList<MovieDetail> value) {
    _$searchResultsAtom.reportWrite(value, super.searchResults, () {
      super.searchResults = value;
    });
  }

  late final _$isSearchingAtom = Atom(
    name: 'HomeStoreBase.isSearching',
    context: context,
  );

  @override
  bool get isSearching {
    _$isSearchingAtom.reportRead();
    return super.isSearching;
  }

  @override
  set isSearching(bool value) {
    _$isSearchingAtom.reportWrite(value, super.isSearching, () {
      super.isSearching = value;
    });
  }

  late final _$initAsyncAction = AsyncAction(
    'HomeStoreBase.init',
    context: context,
  );

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$loadCategoryFeedsAsyncAction = AsyncAction(
    'HomeStoreBase.loadCategoryFeeds',
    context: context,
  );

  @override
  Future<void> loadCategoryFeeds() {
    return _$loadCategoryFeedsAsyncAction.run(() => super.loadCategoryFeeds());
  }

  late final _$loadInitialAsyncAction = AsyncAction(
    'HomeStoreBase.loadInitial',
    context: context,
  );

  @override
  Future<void> loadInitial() {
    return _$loadInitialAsyncAction.run(() => super.loadInitial());
  }

  late final _$loadNextAsyncAction = AsyncAction(
    'HomeStoreBase.loadNext',
    context: context,
  );

  @override
  Future<void> loadNext() {
    return _$loadNextAsyncAction.run(() => super.loadNext());
  }

  late final _$searchAsyncAction = AsyncAction(
    'HomeStoreBase.search',
    context: context,
  );

  @override
  Future<void> search() {
    return _$searchAsyncAction.run(() => super.search());
  }

  late final _$HomeStoreBaseActionController = ActionController(
    name: 'HomeStoreBase',
    context: context,
  );

  @override
  void onSearchChanged(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
      name: 'HomeStoreBase.onSearchChanged',
    );
    try {
      return super.onSearchChanged(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
forYouMovies: ${forYouMovies},
categoryMovies: ${categoryMovies},
isLoading: ${isLoading},
hasMore: ${hasMore},
initialGenres: ${initialGenres},
genres: ${genres},
searchQuery: ${searchQuery},
searchResults: ${searchResults},
isSearching: ${isSearching}
    ''';
  }
}
