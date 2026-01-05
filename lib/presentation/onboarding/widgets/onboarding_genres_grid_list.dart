part of '../genres/onboarding_genres_screen.dart';

class _GenresGrid extends StatelessWidget {
  final OnboardingGenresStore store;

  const _GenresGrid({required this.store});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (store.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: context.height * 0.02,
            crossAxisSpacing: context.width * 0.15,
            childAspectRatio: 1, // perfect circle
          ),
          itemCount: store.genres.length,
          itemBuilder: (_, index) {
            final genre = store.genres[index];
            return Observer(
              builder: (_) {
                final isSelected = store.selectedGenreIds.contains(genre.id);
                return _GenreCircle(genre: genre, selected: isSelected, onTap: () => store.toggleSelection(genre.id));
              },
            );
          },
        );
      },
    );
  }
}
