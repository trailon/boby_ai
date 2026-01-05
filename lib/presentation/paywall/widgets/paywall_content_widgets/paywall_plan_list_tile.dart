part of '../../paywall_screen.dart';

class _PaywallPlanListTile extends StatelessWidget {
  final SubscriptionPlan plan;
  final bool selected;
  final PaywallVariant variant;
  final VoidCallback onTap;

  const _PaywallPlanListTile({required this.plan, required this.selected, required this.variant, required this.onTap});

  Widget _buildBestValueBadge() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(color: AppColors.primaryRed, borderRadius: BorderRadius.circular(8)),
      child: Text(
        S.current.best_value,
        style: TextStyle(color: Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final showBestValue = plan.isBestValue;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            height: context.height * 0.08,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: selected ? AppColors.primaryRed : AppColors.white, width: 1.5),
              color: AppColors.background,
            ),
            child: Row(
              children: [
                /// CHECK BADGE
                Container(
                  width: 16.sp,
                  height: 16.sp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: selected ? Colors.transparent : AppColors.white, width: 1.5),
                    color: selected ? AppColors.primaryRed : Colors.transparent,
                  ),
                  child: selected ? Icon(Icons.check, color: AppColors.white, size: 16.sp) : null,
                ),

                SizedBox(width: 12.w),

                /// TITLE + SUBTITLE
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plan.period.name,
                        style: context.textTheme.titleSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        S.current.only_price_per_week("${plan.pricePerWeek}"),
                        style: context.textTheme.bodySmall?.copyWith(color: Colors.white.withValues(alpha: 0.6)),
                      ),
                    ],
                  ),
                ),

                /// PRICE
                Text(
                  plan.period.pricePerLabel(plan.pricePerWeek),
                  style: context.textTheme.titleSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          // Variant A: Badge centered above the plan
          if (showBestValue && variant == PaywallVariant.variantA)
            Positioned(
              top: -12.h,
              left: 0,
              right: 0,
              child: Center(child: _buildBestValueBadge()),
            ),
          // Variant B: Badge at top right corner, slightly overlapping
          if (showBestValue && variant == PaywallVariant.variantB)
            Positioned(top: -10.h, right: 16.w, child: _buildBestValueBadge()),
        ],
      ),
    );
  }
}
