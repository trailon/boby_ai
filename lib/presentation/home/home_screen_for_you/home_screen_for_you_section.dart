part of '../home_screen.dart';

class _HomeScreenForYouSection extends StatelessWidget {
  const _HomeScreenForYouSection({required this.store});
  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.white, width: 1)),
      ),
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        children: [
          Text(
            S.current.home_screen_for_you_section_title,
            style: context.textTheme.headlineMedium,
          ).paddingOnly(bottom: 12.h).paddingSymmetric(horizontal: 20.w),
          Observer(
            builder: (_) {
              if (store.forYouMovies.isEmpty && store.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return SizedBox(
                height: 80.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: store.forYouMovies.length,
                  itemBuilder: (context, index) {
                    final movie = store.forYouMovies[index];
                    if (index == store.forYouMovies.length - 4) {
                      store.loadNext();
                    }
                    return Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      clipBehavior: Clip.antiAlias,
                      child: CachedNetworkImage(
                        imageUrl: '${appEnv.imageBucketUrl}${movie.posterPath}',
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.cover,
                        cacheKey: '${appEnv.imageBucketUrl}${movie.posterPath}',
                      ),
                    ).paddingOnly(right: 20.w);
                  },
                ),
              );
            },
          ).paddingOnly(left: 20.w, bottom: 20.h),
        ],
      ),
    );
  }
}
