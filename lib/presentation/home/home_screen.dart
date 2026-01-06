import 'package:auto_route/auto_route.dart';
import 'package:boby_ai/app/di/locator.dart';
import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/app/theme/app_colors.dart';
import 'package:boby_ai/app/theme/app_input_decorations.dart';
import 'package:boby_ai/presentation/home/home_store.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/utils.dart';
import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';

part 'home_screen_for_you/home_screen_for_you_section.dart';
part 'home_screen_movies/home_screen_movies_section.dart';
part 'widgets/movies_scrollable_list_with_tab.dart';
part 'widgets/search_result_grid.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _HomeScreen());
  }
}

class _HomeScreen extends StatefulWidget {
  const _HomeScreen();

  @override
  State<_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = locator<HomeStore>();
    store.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _HomeScreenForYouSection(store: store),
            Expanded(child: _HomeScreenMoviesSection(store: store)),
          ],
        ),
      ),
    );
  }
}
