part of '../../paywall_screen.dart';

class _FreeTrialSwitcher extends StatefulWidget {
  final PaywallStore store;

  const _FreeTrialSwitcher({required this.store});

  @override
  State<_FreeTrialSwitcher> createState() => _FreeTrialSwitcherState();
}

class _FreeTrialSwitcherState extends State<_FreeTrialSwitcher> with SingleTickerProviderStateMixin {
  late AnimationController _highlightController;
  late Animation<double> _highlightAnimation;
  late FocusNode _focusNode;
  bool _wasHighlighting = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _highlightController = AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _highlightAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _highlightController, curve: Curves.easeOut));
    // Start at 0.0 so no border by default
    _highlightController.value = 0.0;

    // Listen to focus changes
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _triggerHighlight();
      }
    });
  }

  @override
  void dispose() {
    _highlightController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _triggerHighlight() {
    if (!_highlightController.isAnimating) {
      // Immediately show full border (value = 1.0), then fade away to 0.0
      _highlightController.value = 1.0;
      _highlightController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final enabled = widget.store.freeTrialEnabled;
        final shouldHighlight = widget.store.highlightFreeTrial;

        // Trigger highlight animation when shouldHighlight becomes true (edge detection)
        if (shouldHighlight && !_wasHighlighting) {
          // Request focus to trigger highlight via FocusNode
          _focusNode.requestFocus();
          _wasHighlighting = true;
        } else if (!shouldHighlight && _wasHighlighting) {
          // Reset flag when highlight is turned off
          _wasHighlighting = false;
          _focusNode.unfocus();
        }

        return GestureDetector(
          onTap: widget.store.toggleFreeTrial,
          child: Container(
            height: 47.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primaryRed, width: 1),
              color: AppColors.background,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.current.enable_free_trial, style: context.textTheme.titleSmall),
                Focus(
                  focusNode: _focusNode,
                  child: AnimatedBuilder(
                    animation: _highlightAnimation,
                    builder: (context, child) {
                      // Animation value: 0.0 = no border, 1.0 = full border visible
                      final highlightOpacity = _highlightAnimation.value;
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Switch(value: enabled, onChanged: (value) => widget.store.toggleFreeTrial()),
                          if (highlightOpacity > 0)
                            Container(
                              height: 31.h,
                              width: 51.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.withValues(alpha: highlightOpacity - 0.4),
                                  width: 1,
                                ),
                                color: Colors.lightBlueAccent.withValues(alpha: highlightOpacity - 0.4),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
