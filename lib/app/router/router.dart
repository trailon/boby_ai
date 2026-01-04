import 'dart:io';

import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => Platform.isAndroid ? const RouteType.material() : const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [];
}
