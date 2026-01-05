part of '../favorites/onboarding_favorites_screen.dart';

class _MoviesWheel extends StatelessWidget {
  final OnboardingFavoritesStore store;

  const _MoviesWheel({required this.store});

  static final PageController _controller = PageController(
    viewportFraction: 0.48, // ensures 2 items almost fill screen
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 252.h,
      child: Observer(
        builder: (_) {
          return PageView.builder(
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            itemCount: store.movies.length,
            padEnds: false,
            pageSnapping: false,
            onPageChanged: (index) {
              if (index >= store.movies.length - 3) {
                store.loadMore();
              }
            },
            itemBuilder: (context, index) {
              final movie = store.movies[index];

              return AnimatedBuilder(
                animation: _controller,
                child: null,
                builder: (context, child) {
                  if (!_controller.position.hasContentDimensions) {
                    final isSelected = store.selectedMovieIds.contains(movie.id);
                    final poster = Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: MoviePosterCard(
                        imageUrl: '${appEnv.imageBucketUrl}${movie.posterPath}',
                        selected: isSelected,
                        onTap: () => store.toggleSelection(movie.id),
                      ),
                    );

                    return poster;
                  }

                  final position = _controller.position;
                  final viewportWidth = position.viewportDimension;
                  final itemWidth = viewportWidth * _controller.viewportFraction;

                  // item center relative to viewport
                  final itemCenter = (index * itemWidth) - position.pixels + itemWidth / 2;
                  final viewportCenter = viewportWidth / 2;

                  // normalized distance from visual center
                  final distance = (itemCenter - viewportCenter) / itemWidth;

                  final rotationY = distance * 0.45;
                  final translateX = distance * 12;
                  final translateZ = -distance.abs() * 100;
                  final scale = (1 - distance.abs() * 0.10).clamp(0.85, 1.0);
                  final opacity = (1 - distance.abs() * 0.35).clamp(0.5, 1.0);

                  final matrix = Matrix4.identity()
                    ..setEntry(3, 2, 0.0018)
                    ..translateByVector3(Vector3(translateX, 0.0, translateZ))
                    ..rotateY(rotationY)
                    ..scaleByVector3(Vector3.all(scale));

                  final poster = Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Observer(
                      builder: (_) {
                        final isSelected = store.selectedMovieIds.contains(movie.id);

                        return MoviePosterCard(
                          imageUrl: '${appEnv.imageBucketUrl}${movie.posterPath}',
                          selected: isSelected,
                          onTap: () => store.toggleSelection(movie.id),
                        );
                      },
                    ),
                  );

                  return Transform(
                    alignment: Alignment.center,
                    transform: matrix,
                    child: Opacity(opacity: opacity, child: poster),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
