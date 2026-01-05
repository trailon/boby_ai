part of '../../paywall_screen.dart';

class _PaywallLegalLinks extends StatelessWidget {
  const _PaywallLegalLinks();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          S.current.legal_links_1,
          style: context.textTheme.bodySmall?.copyWith(fontSize: 10.sp, color: Colors.white),
        ),
        Text(
          S.current.legal_links_2,
          style: context.textTheme.bodySmall?.copyWith(fontSize: 10.sp, color: Colors.white),
        ),
        Text(
          S.current.legal_links_3,
          style: context.textTheme.bodySmall?.copyWith(fontSize: 10.sp, color: Colors.white),
        ),
      ],
    );
  }
}
