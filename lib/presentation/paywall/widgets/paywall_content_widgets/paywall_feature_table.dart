part of '../../paywall_screen.dart';

class _PaywallFeatureTable extends StatelessWidget {
  final PaywallStore store;

  const _PaywallFeatureTable({required this.store});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LEFT: labels
          Expanded(
            flex: 18,
            child:
                Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(store.features.length, (i) {
                          return Text(store.features[i].title, style: context.textTheme.labelMedium);
                        }),
                      ],
                    )
                    .paddingOnly(top: context.height * 0.04)
                    .paddingOnly(top: context.height * 0.01, bottom: context.height * 0.01),
          ),

          // FREE column
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _ColumnHeader(text: S.current.free, hideLines: true),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(store.features.length, (i) {
                        return _PaywallFeatureColumnIcon(showCheck: store.features[i].free);
                      }),
                    ],
                  ),
                ),
              ],
            ).paddingOnly(top: context.height * 0.01, bottom: context.height * 0.01),
          ),
          Spacer(flex: 2),

          // PRO column with highlight border
          Expanded(
            flex: 4,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryRed, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _ColumnHeader(text: S.current.pro),
                  // IMPORTANT: use your existing ProFeatureColumn
                  Expanded(
                    child: Observer(builder: (context) => _ProFeatureColumn(enabledCount: store.proEnabledCount)),
                  ),
                ],
              ).paddingOnly(top: context.height * 0.01, bottom: context.height * 0.01),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColumnHeader extends StatelessWidget {
  const _ColumnHeader({this.hideLines = false, required this.text});
  final bool hideLines;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.04,
      child: Column(
        children: [
          // TOP fading line
          _FadeLine(hide: hideLines),

          // TEXT
          Text(text, style: Theme.of(context).textTheme.titleSmall?.copyWith(height: 1)),

          // BOTTOM fading line
          _FadeLine(hide: hideLines),
        ],
      ),
    );
  }
}

class _FadeLine extends StatelessWidget {
  const _FadeLine({this.hide = false});
  final bool hide;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: context.width * 0.1,
      decoration: BoxDecoration(
        gradient: hide
            ? null
            : LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.transparent, AppColors.primaryRedDark, Colors.transparent],
              ),
      ),
    );
  }
}
