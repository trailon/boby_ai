part of '../../paywall_screen.dart';

class _PaywallHeader extends StatelessWidget {
  const _PaywallHeader({required this.onClosePressed});
  final VoidCallback onClosePressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Text('Movie App', style: context.textTheme.headlineMedium))],
        ).paddingOnly(top: context.height * 0.01),
        Positioned(
          right: 0,
          child: IconButton(onPressed: onClosePressed, icon: const Icon(Icons.close)),
        ),
      ],
    );
  }
}
