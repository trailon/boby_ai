// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_favorites_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingFavoritesStore on OnboardingFavoritesStoreBase, Store {
  late final _$moviesAtom = Atom(
    name: 'OnboardingFavoritesStoreBase.movies',
    context: context,
  );

  @override
  ObservableList<Movie> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<Movie> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$selectedMovieIdsAtom = Atom(
    name: 'OnboardingFavoritesStoreBase.selectedMovieIds',
    context: context,
  );

  @override
  ObservableSet<int> get selectedMovieIds {
    _$selectedMovieIdsAtom.reportRead();
    return super.selectedMovieIds;
  }

  @override
  set selectedMovieIds(ObservableSet<int> value) {
    _$selectedMovieIdsAtom.reportWrite(value, super.selectedMovieIds, () {
      super.selectedMovieIds = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'OnboardingFavoritesStoreBase.isLoading',
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

  late final _$errorAtom = Atom(
    name: 'OnboardingFavoritesStoreBase.error',
    context: context,
  );

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$pageAtom = Atom(
    name: 'OnboardingFavoritesStoreBase.page',
    context: context,
  );

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$hasMoreAtom = Atom(
    name: 'OnboardingFavoritesStoreBase.hasMore',
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

  late final _$loadInitialAsyncAction = AsyncAction(
    'OnboardingFavoritesStoreBase.loadInitial',
    context: context,
  );

  @override
  Future<void> loadInitial() {
    return _$loadInitialAsyncAction.run(() => super.loadInitial());
  }

  late final _$loadMoreAsyncAction = AsyncAction(
    'OnboardingFavoritesStoreBase.loadMore',
    context: context,
  );

  @override
  Future<void> loadMore() {
    return _$loadMoreAsyncAction.run(() => super.loadMore());
  }

  late final _$_loadPageAsyncAction = AsyncAction(
    'OnboardingFavoritesStoreBase._loadPage',
    context: context,
  );

  @override
  Future<void> _loadPage() {
    return _$_loadPageAsyncAction.run(() => super._loadPage());
  }

  late final _$submitAsyncAction = AsyncAction(
    'OnboardingFavoritesStoreBase.submit',
    context: context,
  );

  @override
  Future<void> submit() {
    return _$submitAsyncAction.run(() => super.submit());
  }

  late final _$OnboardingFavoritesStoreBaseActionController = ActionController(
    name: 'OnboardingFavoritesStoreBase',
    context: context,
  );

  @override
  void toggleSelection(int movieId) {
    final _$actionInfo = _$OnboardingFavoritesStoreBaseActionController
        .startAction(name: 'OnboardingFavoritesStoreBase.toggleSelection');
    try {
      return super.toggleSelection(movieId);
    } finally {
      _$OnboardingFavoritesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movies: ${movies},
selectedMovieIds: ${selectedMovieIds},
isLoading: ${isLoading},
error: ${error},
page: ${page},
hasMore: ${hasMore}
    ''';
  }
}
