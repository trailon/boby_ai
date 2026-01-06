import 'package:boby_ai/app/env/app_flavor.dart';
import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/data/source/paywall_config_source.dart';
import 'package:boby_ai/domain/entity/paywall_feature.dart';
import 'package:boby_ai/domain/entity/paywall_variant.dart';
import 'package:boby_ai/domain/entity/subscription_plan.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PaywallConfigSource)
class PaywallConfigSourceImpl implements PaywallConfigSource {
  @override
  PaywallVariant getVariant() => appEnv.variant.toVariant;

  @override
  List<PaywallFeature> getFeatures() => [
    PaywallFeature(title: S.current.paywall_option_1, free: true, pro: true),
    PaywallFeature(title: S.current.paywall_option_2, free: false, pro: true),
    PaywallFeature(title: S.current.paywall_option_3, free: false, pro: false),
    PaywallFeature(title: S.current.paywall_option_4, free: false, pro: false),
  ];

  @override
  List<SubscriptionPlan> getPlans() => const [
    SubscriptionPlan(id: 'weekly', period: BillingPeriod.weekly, price: 4.99, pricePerWeek: 4.99),
    SubscriptionPlan(id: 'monthly', period: BillingPeriod.monthly, price: 11.99, pricePerWeek: 2.99),
    SubscriptionPlan(id: 'yearly', period: BillingPeriod.yearly, price: 49.99, pricePerWeek: 0.96, isBestValue: true),
  ];
}
