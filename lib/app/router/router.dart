import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:boby_ai/app/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => Platform.isAndroid ? const RouteType.material() : const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [AutoRoute(page: OnboardingFavoritesRoute.page, initial: true)];
}

final appRouter = AppRouter();
