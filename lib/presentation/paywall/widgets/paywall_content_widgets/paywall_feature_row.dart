part of '../../paywall_screen.dart';

class _PaywallFeatureColumnIcon extends StatelessWidget {
  final bool showCheck;

  const _PaywallFeatureColumnIcon({this.showCheck = false});

  @override
  Widget build(BuildContext context) {
    return Icon(
      showCheck ? Icons.check_circle : Icons.cancel,
      key: ValueKey(showCheck),
      color: showCheck ? AppColors.green : AppColors.gray,
      size: 20,
    );
  }
}
