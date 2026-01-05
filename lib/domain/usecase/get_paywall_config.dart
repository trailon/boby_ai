import 'package:boby_ai/data/source/paywall_config_source.dart';
import 'package:boby_ai/domain/entity/paywall_feature.dart';
import 'package:boby_ai/domain/entity/paywall_variant.dart';
import 'package:boby_ai/domain/entity/subscription_plan.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPaywallConfig {
  final PaywallConfigSource source;

  GetPaywallConfig(this.source);

  PaywallVariant getVariant() => source.getVariant();
  List<PaywallFeature> getFeatures() => source.getFeatures();
  List<SubscriptionPlan> getPlans() => source.getPlans();
}
