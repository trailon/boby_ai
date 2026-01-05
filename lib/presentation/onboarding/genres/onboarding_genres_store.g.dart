// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_genres_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingGenresStore on OnboardingGenresStoreBase, Store {
  Computed<bool>? _$canContinueComputed;

  @override
  bool get canContinue => (_$canContinueComputed ??= Computed<bool>(
    () => super.canContinue,
    name: 'OnboardingGenresStoreBase.canContinue',
  )).value;

  late final _$genresAtom = Atom(
    name: 'OnboardingGenresStoreBase.genres',
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

  late final _$selectedGenreIdsAtom = Atom(
    name: 'OnboardingGenresStoreBase.selectedGenreIds',
    context: context,
  );

  @override
  ObservableSet<int> get selectedGenreIds {
    _$selectedGenreIdsAtom.reportRead();
    return super.selectedGenreIds;
  }

  @override
  set selectedGenreIds(ObservableSet<int> value) {
    _$selectedGenreIdsAtom.reportWrite(value, super.selectedGenreIds, () {
      super.selectedGenreIds = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'OnboardingGenresStoreBase.isLoading',
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

  late final _$loadAsyncAction = AsyncAction(
    'OnboardingGenresStoreBase.load',
    context: context,
  );

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  late final _$persistAsyncAction = AsyncAction(
    'OnboardingGenresStoreBase.persist',
    context: context,
  );

  @override
  Future<void> persist() {
    return _$persistAsyncAction.run(() => super.persist());
  }

  late final _$OnboardingGenresStoreBaseActionController = ActionController(
    name: 'OnboardingGenresStoreBase',
    context: context,
  );

  @override
  void toggleSelection(int genreId) {
    final _$actionInfo = _$OnboardingGenresStoreBaseActionController
        .startAction(name: 'OnboardingGenresStoreBase.toggleSelection');
    try {
      return super.toggleSelection(genreId);
    } finally {
      _$OnboardingGenresStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
genres: ${genres},
selectedGenreIds: ${selectedGenreIds},
isLoading: ${isLoading},
canContinue: ${canContinue}
    ''';
  }
}
