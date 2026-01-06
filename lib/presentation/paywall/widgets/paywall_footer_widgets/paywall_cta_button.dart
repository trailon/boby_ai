part of '../../paywall_screen.dart';

class _PaywallCTAButton extends StatelessWidget {
  final PaywallStore store;

  const _PaywallCTAButton({required this.store});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final String text = store.freeTrialEnabled
            ? "${S.current.paywall_footer_cta_button_state_free_1}\n${S.current.paywall_footer_cta_button_state_free_2}"
            : S.current.paywall_footer_cta_button_state_price;
        Widget button = AppButton(text: text, onPressed: () {});
        if (store.freeTrialEnabled) {
          button = button
              .animate(
                autoPlay: true,
                onComplete: (controller) {
                  controller.repeat();
                },
              )
              .scaleX(begin: 1, end: 1.1)
              .then()
              .scaleX(begin: 1.1, end: 1);
        }
        return button;
      },
    );
  }
}
