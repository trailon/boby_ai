part of '../genres/onboarding_genres_screen.dart';

class _ContinueButton extends StatelessWidget {
  final OnboardingGenresStore store;

  const _ContinueButton({required this.store});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final enabled = store.selectedGenreIds.length >= 2;
        return AppButton(text: S.current.continue_text, onPressed: enabled ? store.persist : null);
      },
    );
  }
}
