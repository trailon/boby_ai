import 'package:injectable/injectable.dart';

import '../repository/onboarding_repository.dart';

@injectable
class SaveFavorites {
  final OnboardingRepository repository;

  SaveFavorites(this.repository);

  Future<void> call(Set<int> ids) {
    return repository.saveFavoriteMovieIds(ids);
  }
}
