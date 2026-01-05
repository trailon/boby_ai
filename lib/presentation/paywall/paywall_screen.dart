import 'package:auto_route/auto_route.dart';
import 'package:boby_ai/app/assets_gen/assets.gen.dart';
import 'package:boby_ai/app/di/locator.dart';
import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/app/theme/app_colors.dart';
import 'package:boby_ai/domain/entity/paywall_variant.dart';
import 'package:boby_ai/domain/entity/subscription_plan.dart';
import 'package:boby_ai/presentation/components/widgets/app_button.dart';
import 'package:boby_ai/presentation/paywall/paywall_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/utils.dart';

part 'paywall_screen_variant_b.dart';
part 'widgets/paywall_content.dart';
part 'widgets/paywall_content_widgets/free_trial_switcher.dart';
part 'widgets/paywall_content_widgets/paywall_feature_row.dart';
part 'widgets/paywall_content_widgets/paywall_feature_table.dart';
part 'widgets/paywall_content_widgets/paywall_header.dart';
part 'widgets/paywall_content_widgets/paywall_plan_list_tile.dart';
part 'widgets/paywall_content_widgets/plan_list.dart';
part 'widgets/paywall_content_widgets/pro_feature_column.dart';
part 'widgets/paywall_footer.dart';
part 'widgets/paywall_footer_widgets/auto_renewal_text.dart';
part 'widgets/paywall_footer_widgets/paywall_cta_button.dart';
part 'widgets/paywall_footer_widgets/paywall_legal_links.dart';
part 'widgets/paywall_variant_b_parts/paywall_variant_b_cta_button.dart';
part 'widgets/paywall_variant_b_parts/paywall_variant_b_option_texts.dart';

@RoutePage()
class PaywallScreen extends StatelessWidget {
  const PaywallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = locator<PaywallStore>();

    return Scaffold(
      body: _PaywallScreen(store: store, variant: store.variant),
    );
  }
}

class _PaywallScreen extends StatelessWidget {
  final PaywallStore store;
  final PaywallVariant variant;

  const _PaywallScreen({required this.store, required this.variant});

  @override
  Widget build(BuildContext context) {
    return switch (variant) {
      PaywallVariant.variantA => SafeArea(bottom: false, child: _PaywallContent(store: store)),
      PaywallVariant.variantB => SafeArea(bottom: false, top: false, child: _PaywallScreenVariantB(store: store)),
    };
  }
}
