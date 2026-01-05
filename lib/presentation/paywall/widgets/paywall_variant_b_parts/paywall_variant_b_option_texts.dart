part of '../../paywall_screen.dart';

class _PaywallVariantBOptionTexts extends StatelessWidget {
  const _PaywallVariantBOptionTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) {
        final features = [
          S.current.paywall_option_1,
          S.current.paywall_option_2,
          S.current.paywall_option_3,
          S.current.paywall_option_4,
        ];
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h, left: 64.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.check, color: AppColors.white, size: 14.sp),
              SizedBox(width: 12.w),
              Text(features[index], style: context.textTheme.labelMedium?.copyWith(color: Colors.white)),
            ],
          ),
        );
      }),
    );
  }
}
