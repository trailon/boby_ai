// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:boby_ai/presentation/home/home_screen.dart' as _i1;
import 'package:boby_ai/presentation/onboarding/favorites/onboarding_favorites_screen.dart'
    as _i2;
import 'package:boby_ai/presentation/onboarding/genres/onboarding_genres_screen.dart'
    as _i3;
import 'package:boby_ai/presentation/paywall/paywall_screen.dart' as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardingFavoritesScreen]
class OnboardingFavoritesRoute extends _i5.PageRouteInfo<void> {
  const OnboardingFavoritesRoute({List<_i5.PageRouteInfo>? children})
    : super(OnboardingFavoritesRoute.name, initialChildren: children);

  static const String name = 'OnboardingFavoritesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingFavoritesScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingGenresScreen]
class OnboardingGenresRoute extends _i5.PageRouteInfo<void> {
  const OnboardingGenresRoute({List<_i5.PageRouteInfo>? children})
    : super(OnboardingGenresRoute.name, initialChildren: children);

  static const String name = 'OnboardingGenresRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardingGenresScreen();
    },
  );
}

/// generated route for
/// [_i4.PaywallScreen]
class PaywallRoute extends _i5.PageRouteInfo<void> {
  const PaywallRoute({List<_i5.PageRouteInfo>? children})
    : super(PaywallRoute.name, initialChildren: children);

  static const String name = 'PaywallRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.PaywallScreen();
    },
  );
}
