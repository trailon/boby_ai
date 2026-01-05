import 'package:boby_ai/domain/entity/paywall_feature.dart';
import 'package:boby_ai/domain/entity/paywall_variant.dart';
import 'package:boby_ai/domain/entity/subscription_plan.dart';

abstract class PaywallConfigSource {
  PaywallVariant getVariant();
  List<PaywallFeature> getFeatures();
  List<SubscriptionPlan> getPlans();
}