part of '../paywall_screen.dart';

class _PaywallFooter extends StatelessWidget {
  final PaywallStore store;

  const _PaywallFooter({required this.store});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _AutoRenewalText(),
        SizedBox(height: 4.h),
        _PaywallCTAButton(store: store),
        const _PaywallLegalLinks(),
      ],
    );
  }
}
