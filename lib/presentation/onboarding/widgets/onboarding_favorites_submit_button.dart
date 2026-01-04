part of '../favorites/onboarding_favorites_screen.dart';

class _ContinueButton extends StatelessWidget {
  final OnboardingFavoritesStore store;

  const _ContinueButton({required this.store});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final enabled = store.selectedMovieIds.length >= 3;

        return Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: enabled ? store.submit : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFCB2C2C),
                disabledBackgroundColor: const Color(0xFF8C2626),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: Text(S.current.continue_text),
            ),
          ),
        );
      },
    );
  }
}
