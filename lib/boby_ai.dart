import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/app/router/router.dart';
import 'package:boby_ai/app/theme/app_theme.dart';
import 'package:boby_ai/app/utils/reset_focus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BobyAi extends StatelessWidget {
  const BobyAi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          theme: buildAppTheme(),
          darkTheme: buildAppTheme(),
          builder: (context, child) {
            if (!kReleaseMode) {
              child = Banner(location: BannerLocation.topStart, message: flavor.name, child: child);
            }
            child = GestureDetector(
              key: ValueKey(appRouter.current.name),
              onTap: () => ResetFocus().initFocus(),
              child: child,
            );
            return child;
          },
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: const Locale('en', 'EN'),
          supportedLocales: S.delegate.supportedLocales,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
