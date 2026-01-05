import 'package:auto_route/auto_route.dart';
import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/app/theme/app_colors.dart';
import 'package:boby_ai/domain/entity/genre.dart';
import 'package:boby_ai/presentation/components/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import '../../../../app/di/locator.dart';
import 'onboarding_genres_store.dart';

part '../widgets/onboarding_genres_circle.dart';
part '../widgets/onboarding_genres_grid_list.dart';
part '../widgets/onboarding_genres_header.dart';
part '../widgets/onboarding_genres_submit_button.dart';

@RoutePage()
class OnboardingGenresScreen extends StatefulWidget {
  const OnboardingGenresScreen({super.key});

  @override
  State<OnboardingGenresScreen> createState() => _OnboardingGenresScreenState();
}

class _OnboardingGenresScreenState extends State<OnboardingGenresScreen> {
  late final OnboardingGenresStore store;

  @override
  void initState() {
    super.initState();
    store = locator<OnboardingGenresStore>();
    store.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(store: store),
            Expanded(child: _GenresGrid(store: store)),
            _ContinueButton(store: store),
          ],
        ),
      ),
    );
  }
}
