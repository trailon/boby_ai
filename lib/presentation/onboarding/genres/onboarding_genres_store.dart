import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../domain/entity/genre.dart';
import '../../../../domain/usecase/get_genres.dart';
import '../../../../domain/usecase/save_genres.dart';

part 'onboarding_genres_store.g.dart';

@injectable
class OnboardingGenresStore = OnboardingGenresStoreBase with _$OnboardingGenresStore;

abstract class OnboardingGenresStoreBase with Store {
  OnboardingGenresStoreBase(this._getGenresUseCase, this._saveGenresUseCase);

  final GetGenres _getGenresUseCase;
  final SaveGenres _saveGenresUseCase;

  @observable
  ObservableList<Genre> genres = ObservableList();

  @observable
  ObservableSet<int> selectedGenreIds = ObservableSet();

  @observable
  bool isLoading = false;

  @computed
  bool get canContinue => selectedGenreIds.length == 2;

  @action
  Future<void> load() async {
    isLoading = true;
    final result = await _getGenresUseCase();
    genres = ObservableList.of(result);
    isLoading = false;
  }

  @action
  void toggleSelection(int genreId) {
    if (selectedGenreIds.contains(genreId)) {
      selectedGenreIds.remove(genreId);
      return;
    }

    if (selectedGenreIds.length < 2) {
      selectedGenreIds.add(genreId);
    }
  }

  @action
  Future<void> persist() async {
    await _saveGenresUseCase(selectedGenreIds.toSet());
  }
}
