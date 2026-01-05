import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/domain/entity/paywall_variant.dart';

enum BillingPeriod {
  weekly(2),
  monthly(3),
  yearly(4);

  final int enabledFeatures;
  const BillingPeriod(this.enabledFeatures);

  String get name => switch (this) {
    weekly => 'Weekly',
    monthly => 'Monthly',
    yearly => 'Yearly',
  };

  List<PaywallVariant> get variants => switch (this) {
    weekly => [PaywallVariant.variantA],
    monthly => [PaywallVariant.variantA, PaywallVariant.variantB],
    yearly => [PaywallVariant.variantA, PaywallVariant.variantB],
  };

  String pricePerLabel(double price) => switch (this) {
    weekly => S.current.per_week(" \$$price"),
    monthly => S.current.per_month(" \$$price"),
    yearly => S.current.per_year(" \$$price"),
  };
}

class SubscriptionPlan {
  final String id;
  final BillingPeriod period;
  final double pricePerWeek;
  final double price;
  final bool isBestValue;

  const SubscriptionPlan({
    required this.id,
    required this.period,
    required this.price,
    required this.pricePerWeek,
    this.isBestValue = false,
  });
}
