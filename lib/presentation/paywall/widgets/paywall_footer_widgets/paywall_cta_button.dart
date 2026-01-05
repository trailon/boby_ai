part of '../../paywall_screen.dart';

class _PaywallCTAButton extends StatelessWidget {
  final PaywallStore store;

  const _PaywallCTAButton({required this.store});

  @override
  Widget build(BuildContext context) {
    return AppButton(text: S.current.paywall_footer_cta_button_state_price, onPressed: () {});
  }
}
