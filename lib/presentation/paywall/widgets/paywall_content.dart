part of '../paywall_screen.dart';

class _PaywallContent extends StatelessWidget {
  final PaywallStore store;

  const _PaywallContent({required this.store});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.w, 0.h, 24.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _PaywallHeader(onClosePressed: store.closePaywall),
          SizedBox(height: 16.h),
          _PaywallFeatureTable(store: store),
          SizedBox(height: 28.h),
          _FreeTrialSwitcher(store: store),
          SizedBox(height: 24.h),
          _PlanList(store: store),
          _PaywallFooter(store: store),
        ],
      ),
    );
  }
}
