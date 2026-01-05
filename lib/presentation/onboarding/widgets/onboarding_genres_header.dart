part of '../genres/onboarding_genres_screen.dart';

class _Header extends StatelessWidget {
  final OnboardingGenresStore store;

  const _Header({required this.store});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Observer(
          builder: (_) {
            final done = store.selectedGenreIds.length >= 2;
            return Text.rich(
              TextSpan(
                children: [
                  if (done)
                    TextSpan(
                      text: S.current.onboarding_genres_step_done_title,
                      style: context.textTheme.headlineMedium,
                    ),
                  if (!done)
                    TextSpan(
                      text: S.current.onboarding_genres_step_intro_title,
                      style: context.textTheme.headlineMedium,
                    ),
                  if (!done)
                    TextSpan(
                      text: '\n${S.current.onboarding_genres_step_intro_subtitle}',
                      style: context.textTheme.headlineSmall,
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
