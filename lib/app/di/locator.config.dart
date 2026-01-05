// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/api/tmdb_api.dart' as _i213;
import '../../data/repository/onboarding_repository_impl.dart' as _i323;
import '../../data/source/onboarding_local_source.dart' as _i611;
import '../../data/source/onboarding_local_source_impl.dart' as _i811;
import '../../domain/repository/onboarding_repository.dart' as _i649;
import '../../domain/usecase/get_genres.dart' as _i383;
import '../../domain/usecase/get_popular_movies.dart' as _i1041;
import '../../domain/usecase/get_saved_onboarding.dart' as _i14;
import '../../domain/usecase/save_favorites.dart' as _i595;
import '../../domain/usecase/save_genres.dart' as _i444;
import '../../presentation/onboarding/favorites/onboarding_favorites_store.dart'
    as _i235;
import '../../presentation/onboarding/genres/onboarding_genres_store.dart'
    as _i131;
import 'modules/network_module.dart' as _i851;
import 'modules/storage_module.dart' as _i148;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final storageModule = _$StorageModule();
  final networkModule = _$NetworkModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => storageModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
  gh.lazySingleton<_i611.OnboardingLocalSource>(
    () => _i811.OnboardingLocalSourceImpl(gh<_i460.SharedPreferences>()),
  );
  gh.lazySingleton<_i213.TmdbApi>(() => networkModule.tmdbApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i649.OnboardingRepository>(
    () => _i323.OnboardingRepositoryImpl(
      api: gh<_i213.TmdbApi>(),
      localSource: gh<_i611.OnboardingLocalSource>(),
    ),
  );
  gh.factory<_i383.GetGenres>(
    () => _i383.GetGenres(gh<_i649.OnboardingRepository>()),
  );
  gh.factory<_i1041.GetPopularMovies>(
    () => _i1041.GetPopularMovies(gh<_i649.OnboardingRepository>()),
  );
  gh.factory<_i14.GetSavedOnboarding>(
    () => _i14.GetSavedOnboarding(gh<_i649.OnboardingRepository>()),
  );
  gh.factory<_i595.SaveFavorites>(
    () => _i595.SaveFavorites(gh<_i649.OnboardingRepository>()),
  );
  gh.factory<_i444.SaveGenres>(
    () => _i444.SaveGenres(gh<_i649.OnboardingRepository>()),
  );
  gh.factory<_i131.OnboardingGenresStore>(
    () => _i131.OnboardingGenresStore(
      gh<_i383.GetGenres>(),
      gh<_i444.SaveGenres>(),
    ),
  );
  gh.factory<_i235.OnboardingFavoritesStore>(
    () => _i235.OnboardingFavoritesStore(
      getPopularMovies: gh<_i1041.GetPopularMovies>(),
      saveFavorites: gh<_i595.SaveFavorites>(),
    ),
  );
  return getIt;
}

class _$StorageModule extends _i148.StorageModule {}

class _$NetworkModule extends _i851.NetworkModule {}
