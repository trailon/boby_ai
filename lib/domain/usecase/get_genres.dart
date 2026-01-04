import 'package:injectable/injectable.dart';

import '../entity/genre.dart';
import '../repository/onboarding_repository.dart';

@injectable
class GetGenres {
  final OnboardingRepository repository;

  GetGenres(this.repository);

  Future<List<Genre>> call() {
    return repository.getGenres();
  }
}
