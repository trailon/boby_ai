part of '../../paywall_screen.dart';

class _PaywallVariantBCtaButton extends StatelessWidget {
  const _PaywallVariantBCtaButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 32.sp),
            Text(
              S.current.continue_text,
              style: context.textTheme.labelLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Icon(Icons.arrow_forward, size: 16.sp).paddingOnly(right: 16.w),
          ],
        ),
      ),
    );
  }
}
