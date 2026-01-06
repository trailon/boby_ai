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

import '../../data/api/movie_api.dart' as _i550;
import '../../data/api/tmdb_api.dart' as _i213;
import '../../data/repository/movie_repository_impl.dart' as _i572;
import '../../data/repository/onboarding_repository_impl.dart' as _i323;
import '../../data/source/movie_remote_source.dart' as _i687;
import '../../data/source/movie_remote_source_impl.dart' as _i937;
import '../../data/source/onboarding_local_source.dart' as _i611;
import '../../data/source/onboarding_local_source_impl.dart' as _i811;
import '../../data/source/paywall_config_source.dart' as _i920;
import '../../data/source/paywall_config_source_impl.dart' as _i643;
import '../../domain/repository/movie_repository.dart' as _i979;
import '../../domain/repository/onboarding_repository.dart' as _i649;
import '../../domain/usecase/discover_movies.dart' as _i250;
import '../../domain/usecase/get_all_genres.dart' as _i239;
import '../../domain/usecase/get_genres.dart' as _i383;
import '../../domain/usecase/get_paywall_config.dart' as _i567;
import '../../domain/usecase/get_popular_movies.dart' as _i1041;
import '../../domain/usecase/get_saved_onboarding.dart' as _i14;
import '../../domain/usecase/save_favorites.dart' as _i595;
import '../../domain/usecase/save_genres.dart' as _i444;
import '../../domain/usecase/search_movies.dart' as _i1028;
import '../../presentation/home/home_store.dart' as _i283;
import '../../presentation/onboarding/favorites/onboarding_favorites_store.dart'
    as _i235;
import '../../presentation/onboarding/genres/onboarding_genres_store.dart'
    as _i131;
import '../../presentation/paywall/paywall_store.dart' as _i1072;
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
  gh.lazySingleton<_i920.PaywallConfigSource>(
    () => _i643.PaywallConfigSourceImpl(),
  );
  gh.lazySingleton<_i611.OnboardingLocalSource>(
    () => _i811.OnboardingLocalSourceImpl(gh<_i460.SharedPreferences>()),
  );
  gh.lazySingleton<_i213.TmdbApi>(() => networkModule.tmdbApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i550.MovieApi>(
    () => networkModule.movieApi(gh<_i361.Dio>()),
  );
  gh.lazySingleton<_i687.MovieRemoteSource>(
    () =>
        _i937.MovieRemoteSourceImpl(gh<_i550.MovieApi>(), gh<_i213.TmdbApi>()),
  );
  gh.factory<_i567.GetPaywallConfig>(
    () => _i567.GetPaywallConfig(gh<_i920.PaywallConfigSource>()),
  );
  gh.lazySingleton<_i649.OnboardingRepository>(
    () => _i323.OnboardingRepositoryImpl(
      api: gh<_i213.TmdbApi>(),
      localSource: gh<_i611.OnboardingLocalSource>(),
    ),
  );
  gh.lazySingleton<_i979.MovieRepository>(
    () => _i572.MovieRepositoryImpl(gh<_i687.MovieRemoteSource>()),
  );
  gh.factory<_i1072.PaywallStore>(
    () => _i1072.PaywallStore(gh<_i567.GetPaywallConfig>()),
  );
  gh.factory<_i250.DiscoverMovies>(
    () => _i250.DiscoverMovies(gh<_i979.MovieRepository>()),
  );
  gh.factory<_i239.GetAllGenres>(
    () => _i239.GetAllGenres(gh<_i979.MovieRepository>()),
  );
  gh.factory<_i1028.SearchMovies>(
    () => _i1028.SearchMovies(gh<_i979.MovieRepository>()),
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
  gh.factory<_i283.HomeStore>(
    () => _i283.HomeStore(
      gh<_i250.DiscoverMovies>(),
      gh<_i14.GetSavedOnboarding>(),
      gh<_i1028.SearchMovies>(),
      gh<_i239.GetAllGenres>(),
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
