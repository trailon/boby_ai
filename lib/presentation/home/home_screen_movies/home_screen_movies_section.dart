part of '../home_screen.dart';

class _HomeScreenMoviesSection extends StatelessWidget {
  const _HomeScreenMoviesSection({required this.store});
  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              S.current.home_screen_movies_section_title,
              style: context.textTheme.headlineMedium,
            ).paddingOnly(bottom: 12.h, top: 12.h).paddingSymmetric(horizontal: 20.w),
            TextField(
              decoration: movieSearchDecoration(context),
              cursorColor: AppColors.black,
              textInputAction: TextInputAction.search,
              style: context.textTheme.bodyLarge?.copyWith(color: AppColors.black),
              onChanged: store.onSearchChanged,
            ).paddingSymmetric(horizontal: 20.w).paddingOnly(bottom: 24.h),
            if (store.isSearching) Expanded(child: _SearchResultsGrid(store: store)),
            if (!store.isSearching) Expanded(child: _MoviesScrollableListWithTab(store: store)),
          ],
        );
      },
    );
  }
}
