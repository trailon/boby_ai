part of '../../paywall_screen.dart';

class _PlanList extends StatelessWidget {
  final PaywallStore store;

  const _PlanList({required this.store});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...store.plans.map(
          (plan) => Observer(
            builder: (context) => !plan.period.variants.contains(store.variant)
                ? const SizedBox.shrink()
                : _PaywallPlanListTile(
                    plan: plan,
                    selected: store.selectedPlan?.id == plan.id,
                    variant: store.variant,
                    onTap: () => store.selectPlan(plan),
                  ).paddingOnly(bottom: 20.h),
          ),
        ),
      ],
    );
  }
}
