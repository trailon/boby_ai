part of '../../paywall_screen.dart';

class _AutoRenewalText extends StatelessWidget {
  const _AutoRenewalText();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        SvgPicture.asset(Assets.vectors.safeCheck, width: 16.w, height: 16.w),
        SizedBox(width: 4.w),
        Text(S.current.paywall_footer_title, style: context.textTheme.bodySmall?.copyWith(fontSize: 10.sp)),
      ],
    );
  }
}
