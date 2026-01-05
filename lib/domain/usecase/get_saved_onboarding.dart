import 'package:injectable/injectable.dart';

import '../repository/onboarding_repository.dart';

@injectable
class GetSavedOnboarding {
  final OnboardingRepository repository;

  GetSavedOnboarding(this.repository);

  Future<Set<int>> getFavorites() {
    return repository.getSavedFavoriteMovieIds();
  }

  Future<Set<int>> getGenres() {
    return repository.getSavedGenreIds();
  }
}
