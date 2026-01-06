part of '../home_screen.dart';

class _SearchResultsGrid extends StatelessWidget {
  const _SearchResultsGrid({required this.store});
  final HomeStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 21.w,
              runSpacing: 12.h,
              children: store.searchResults
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
                            Center(child: CircularProgressIndicator()),
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
            ),
          ),
        );
      },
    );
  }
}
