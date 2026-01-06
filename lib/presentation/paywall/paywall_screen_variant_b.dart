part of 'paywall_screen.dart';

class _PaywallScreenVariantB extends StatelessWidget {
  final PaywallStore store;
  const _PaywallScreenVariantB({required this.store});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned.fill(child: Image.asset(Assets.images.paywallBackgroundVariantB.path, fit: BoxFit.cover)),
        // Gradient overlay for better text readability
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.2),
                  Colors.black.withValues(alpha: 0.4),
                  Colors.black.withValues(alpha: 0.6),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),
        Positioned(
          top: 80.h,
          left: 331.w,
          child: IconButton(
            onPressed: store.closePaywall,
            icon: const Icon(Icons.close, color: Colors.white),
          ),
        ),
        // Content
        Column(
          children: [
            // Close button

            // Scrollable content
            const Spacer(),

            // App Name
            Text(
              appName,
              style: context.textTheme.headlineMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ).paddingOnly(bottom: 30.h),
            // Feature list with checkmarks
            const _PaywallVariantBOptionTexts().paddingOnly(bottom: 32.h),

            // Plan list
            _PlanList(store: store).paddingOnly(bottom: 24.h),
            // Auto-renewal text
            const _AutoRenewalText().paddingOnly(bottom: 8.h),
            // Continue button
            const _PaywallVariantBCtaButton().paddingOnly(bottom: 24.h),
            // Footer links
            const _PaywallLegalLinks().paddingOnly(bottom: context.mediaQueryViewPadding.bottom),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ],
    );
  }
}
