part of '../home_screen.dart';

class _MoviesScrollableListWithTab extends StatelessWidget {
  const _MoviesScrollableListWithTab({required this.store});
  final HomeStore store;
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ScrollableListTabScroller.defaultComponents(
          headerContainerProps: HeaderContainerProps(height: 32.h),
          addRepaintBoundaries: true,
          tabBarProps: TabBarProps(
            dividerHeight: 0,
            padding: EdgeInsets.only(left: 20.w),
            labelPadding: EdgeInsets.only(right: 12.w),
          ),
          itemCount: store.genres.length,
          earlyChangePositionOffset: 30.h,
          scrollDirection: Axis.vertical,
          tabBuilder: (context, index, active) {
            final genre = store.genres[index];
            return Chip(
              visualDensity: VisualDensity.compact,
              color: WidgetStateProperty.resolveWith((states) => active ? AppColors.primaryRed : AppColors.white),
              chipAnimationStyle: ChipAnimationStyle(
                enableAnimation: const AnimationStyle(curve: Curves.easeInOut, duration: Duration(milliseconds: 300)),
              ),
              avatarBoxConstraints: BoxConstraints(minWidth: 20.sp, minHeight: 20.sp),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              avatar: active ? Icon(Icons.check, size: 20.sp, color: AppColors.white) : null,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
              label: Text(
                genre.name,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge?.copyWith(color: active ? AppColors.white : AppColors.black),
              ),
              backgroundColor: active ? AppColors.primaryRed : null,
            );
          },
          itemBuilder: (context, index) {
            return Observer(
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: index == 0 ? 24.h : 0),
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      Align(
                        alignment: .centerLeft,
                        child: Text(
                          store.genres[index].name,
                          style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
                        ),
                      ).paddingOnly(bottom: 12.h),
                      Wrap(
                        spacing: 21.w,
                        runSpacing: 12.h,
                        children: (store.categoryMovies[store.genres[index].id] ?? ([]))
                            .map(
                              (movie) => ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                clipBehavior: Clip.antiAlias,
                                child: CachedNetworkImage(
                                  imageUrl: '${appEnv.imageBucketUrl}${movie.posterPath}',
                                  width: 100.w,
                                  height: 140.h,
                                  fit: BoxFit.cover,
                                  progressIndicatorBuilder: (context, url, progress) =>
                                      const Center(child: CircularProgressIndicator()),
                                  errorWidget: (context, error, stackTrace) => Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.error, size: 24.sp, color: AppColors.white),
                                      Text(
                                        S.current.image_not_found,
                                        textAlign: TextAlign.center,
                                        style: context.textTheme.bodyMedium?.copyWith(color: AppColors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ).paddingOnly(bottom: 24.h),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
