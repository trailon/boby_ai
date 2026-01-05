enum BillingPeriod { weekly, monthly, yearly }

class SubscriptionPlan {
  final String id;
  final BillingPeriod period;
  final double price;
  final String priceLabel;
  final String subtitle;
  final bool isBestValue;

  const SubscriptionPlan({
    required this.id,
    required this.period,
    required this.price,
    required this.priceLabel,
    required this.subtitle,
    this.isBestValue = false,
  });
}
