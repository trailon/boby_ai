import 'package:auto_route/auto_route.dart';
import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/presentation/components/movie/movie_poster_card.dart';
import 'package:boby_ai/presentation/components/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/utils.dart';
import 'package:vector_math/vector_math_64.dart';

import '../../../../app/di/locator.dart';
import 'onboarding_favorites_store.dart';

part '../widgets/onboarding_favorites_header.dart';
part '../widgets/onboarding_favorites_submit_button.dart';
part '../widgets/onboarding_favorites_wheel_carousel_slider.dart';

@RoutePage()
class OnboardingFavoritesScreen extends StatefulWidget {
  const OnboardingFavoritesScreen({super.key});

  @override
  State<OnboardingFavoritesScreen> createState() => _OnboardingFavoritesScreenState();
}

class _OnboardingFavoritesScreenState extends State<OnboardingFavoritesScreen> {
  late final OnboardingFavoritesStore store;

  @override
  void initState() {
    super.initState();
    store = locator<OnboardingFavoritesStore>();
    store.loadInitial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(store: store),
            const Spacer(),
            _MoviesWheel(store: store),
            const Spacer(),
            _ContinueButton(store: store),
          ],
        ),
      ),
    );
  }
}
