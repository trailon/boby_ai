enum PaywallVariant { variantA, variantB }

extension PaywallVariantExt on String {
  PaywallVariant get toVariant => switch (toLowerCase()) {
    'a' => PaywallVariant.variantA,
    'b' => PaywallVariant.variantB,
    _ => PaywallVariant.variantA,
  };
}
