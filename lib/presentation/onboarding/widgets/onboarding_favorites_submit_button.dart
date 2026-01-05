part of '../favorites/onboarding_favorites_screen.dart';

class _ContinueButton extends StatelessWidget {
  final OnboardingFavoritesStore store;

  const _ContinueButton({required this.store});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final enabled = store.selectedMovieIds.length >= 3;
        return AppButton(text: S.current.continue_text, onPressed: enabled ? store.submit : null);
       
      },
    );
  }
}
