part of '../../paywall_screen.dart';

/// PRO column that animates the *changed* row by sliding the icon
/// instead of cross-fading.
///
/// Behavior:
/// - When [enabledCount] increases, the newly-enabled check icon slides *down* from above.
/// - When [enabledCount] decreases, the newly-disabled x icon slides *up* from below.
class _ProFeatureColumn extends StatefulWidget {
  final int enabledCount;

  const _ProFeatureColumn({required this.enabledCount});

  static const int totalFeatures = 4;

  @override
  State<_ProFeatureColumn> createState() => _ProFeatureColumnState();
}

class _ProFeatureColumnState extends State<_ProFeatureColumn> {
  late int _prevEnabledCount;

  @override
  void initState() {
    super.initState();
    _prevEnabledCount = widget.enabledCount;
  }

  @override
  void didUpdateWidget(covariant _ProFeatureColumn oldWidget) {
    super.didUpdateWidget(oldWidget);
    _prevEnabledCount = oldWidget.enabledCount;
  }

  @override
  Widget build(BuildContext context) {
    final int enabledCount = widget.enabledCount.clamp(0, _ProFeatureColumn.totalFeatures);
    final int prevEnabledCount = _prevEnabledCount.clamp(0, _ProFeatureColumn.totalFeatures);

    final int delta = enabledCount - prevEnabledCount;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(_ProFeatureColumn.totalFeatures, (index) {
        final bool isEnabledNow = index < enabledCount;

        // Identify rows that are changing
        // When enabling: rows from prevEnabledCount to enabledCount-1 change (from cancel to check)
        // When disabling: rows from enabledCount to prevEnabledCount-1 change (from check to cancel)
        final bool isChangingRow =
            (delta > 0 && index >= prevEnabledCount && index < enabledCount) ||
            (delta < 0 && index >= enabledCount && index < prevEnabledCount);

        // Check if this is the last icon (index 3, the 4th row)
        final bool isLastIcon = index == _ProFeatureColumn.totalFeatures - 1;

        // When increasing by 1, the row below the changing row should be hidden during animation
        final bool shouldHideBelowRow =
            delta == 1 && index == prevEnabledCount + 1 && index < _ProFeatureColumn.totalFeatures;

        // For the row below when increasing, use a delayed fade-in animation
        if (shouldHideBelowRow) {
          return SizedBox(
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              curve: const Interval(0.95, 1.0, curve: Curves.easeOut),
              builder: (context, opacity, child) {
                return Opacity(opacity: opacity, child: child);
              },
              child: _FeatureIcon(key: ValueKey<bool>(isEnabledNow), enabled: isEnabledNow),
            ),
          );
        }

        return SizedBox(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeOutCubic,
            switchOutCurve: Curves.easeInCubic,
            layoutBuilder: (currentChild, previousChildren) {
              return Stack(
                alignment: Alignment.center,
                children: <Widget>[...previousChildren, if (currentChild != null) currentChild],
              );
            },
            transitionBuilder: (child, animation) {
              if (!isChangingRow) {
                return child;
              }

              final bool isIncoming = child.key == ValueKey<bool>(isEnabledNow);
              final bool isOutgoing = !isIncoming;

              // If delta is more than 1 (e.g., 2 to 4 or 4 to 2), use fade transition
              final bool useFadeTransition = delta.abs() > 1;

              // Special case: last icon (4th row) just transforms (no slide animation)
              // Or if delta is more than 1, use fade for all transitions
              if (isLastIcon || useFadeTransition) {
                // For outgoing widgets, hide immediately
                if (isOutgoing) {
                  return Opacity(opacity: 0, child: child);
                }
                // For incoming widgets, use normal fade animation
                return FadeTransition(opacity: animation, child: child);
              }

              // When enabling: cancel falls down, check appears in place
              if (delta > 0) {
                // Outgoing cancel: falls down below
                if (isOutgoing && child.key == const ValueKey<bool>(false)) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(0, 2), // falls down below
                    ).animate(CurvedAnimation(parent: ReverseAnimation(animation), curve: Curves.easeInCubic)),
                    child: child,
                  );
                }
                // Incoming check: appears in place (fade in)
                if (isIncoming && isEnabledNow) {
                  return FadeTransition(opacity: animation, child: child);
                }
              }

              // When disabling: cancel comes from below, check disappears
              if (delta < 0) {
                // Incoming cancel: comes from below
                if (isIncoming && !isEnabledNow) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 2), // starts below
                      end: Offset.zero, // rises to center
                    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic)),
                    child: child,
                  );
                }
                // Outgoing check: disappears immediately
                if (isOutgoing && child.key == const ValueKey<bool>(true)) {
                  return Opacity(opacity: 0, child: child);
                }
              }

              return child;
            },
            child: _FeatureIcon(key: ValueKey<bool>(isEnabledNow), enabled: isEnabledNow),
          ),
        );
      }),
    );
  }
}

class _FeatureIcon extends StatelessWidget {
  final bool enabled;

  const _FeatureIcon({super.key, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return Icon(
      enabled ? Icons.check_circle : Icons.cancel,
      size: 20,
      color: enabled ? AppColors.green : AppColors.gray,
    );
  }
}
