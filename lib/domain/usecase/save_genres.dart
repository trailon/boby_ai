import 'package:injectable/injectable.dart';

import '../repository/onboarding_repository.dart';

@injectable
class SaveGenres {
  final OnboardingRepository repository;

  SaveGenres(this.repository);

  Future<void> call(Set<int> ids) {
    return repository.saveGenreIds(ids);
  }
}
