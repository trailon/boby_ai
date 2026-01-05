// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:boby_ai/presentation/onboarding/favorites/onboarding_favorites_screen.dart'
    as _i1;
import 'package:boby_ai/presentation/onboarding/genres/onboarding_genres_screen.dart'
    as _i2;

/// generated route for
/// [_i1.OnboardingFavoritesScreen]
class OnboardingFavoritesRoute extends _i3.PageRouteInfo<void> {
  const OnboardingFavoritesRoute({List<_i3.PageRouteInfo>? children})
    : super(OnboardingFavoritesRoute.name, initialChildren: children);

  static const String name = 'OnboardingFavoritesRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.OnboardingFavoritesScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardingGenresScreen]
class OnboardingGenresRoute extends _i3.PageRouteInfo<void> {
  const OnboardingGenresRoute({List<_i3.PageRouteInfo>? children})
    : super(OnboardingGenresRoute.name, initialChildren: children);

  static const String name = 'OnboardingGenresRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingGenresScreen();
    },
  );
}
