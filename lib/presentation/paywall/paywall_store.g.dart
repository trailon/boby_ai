// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paywall_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaywallStore on PaywallStoreBase, Store {
  Computed<int>? _$proEnabledCountComputed;

  @override
  int get proEnabledCount => (_$proEnabledCountComputed ??= Computed<int>(
    () => super.proEnabledCount,
    name: 'PaywallStoreBase.proEnabledCount',
  )).value;

  late final _$variantAtom = Atom(
    name: 'PaywallStoreBase.variant',
    context: context,
  );

  @override
  PaywallVariant get variant {
    _$variantAtom.reportRead();
    return super.variant;
  }

  @override
  set variant(PaywallVariant value) {
    _$variantAtom.reportWrite(value, super.variant, () {
      super.variant = value;
    });
  }

  late final _$freeTrialEnabledAtom = Atom(
    name: 'PaywallStoreBase.freeTrialEnabled',
    context: context,
  );

  @override
  bool get freeTrialEnabled {
    _$freeTrialEnabledAtom.reportRead();
    return super.freeTrialEnabled;
  }

  @override
  set freeTrialEnabled(bool value) {
    _$freeTrialEnabledAtom.reportWrite(value, super.freeTrialEnabled, () {
      super.freeTrialEnabled = value;
    });
  }

  late final _$highlightFreeTrialAtom = Atom(
    name: 'PaywallStoreBase.highlightFreeTrial',
    context: context,
  );

  @override
  bool get highlightFreeTrial {
    _$highlightFreeTrialAtom.reportRead();
    return super.highlightFreeTrial;
  }

  @override
  set highlightFreeTrial(bool value) {
    _$highlightFreeTrialAtom.reportWrite(value, super.highlightFreeTrial, () {
      super.highlightFreeTrial = value;
    });
  }

  late final _$selectedPlanAtom = Atom(
    name: 'PaywallStoreBase.selectedPlan',
    context: context,
  );

  @override
  SubscriptionPlan? get selectedPlan {
    _$selectedPlanAtom.reportRead();
    return super.selectedPlan;
  }

  @override
  set selectedPlan(SubscriptionPlan? value) {
    _$selectedPlanAtom.reportWrite(value, super.selectedPlan, () {
      super.selectedPlan = value;
    });
  }

  late final _$featuresAtom = Atom(
    name: 'PaywallStoreBase.features',
    context: context,
  );

  @override
  List<PaywallFeature> get features {
    _$featuresAtom.reportRead();
    return super.features;
  }

  @override
  set features(List<PaywallFeature> value) {
    _$featuresAtom.reportWrite(value, super.features, () {
      super.features = value;
    });
  }

  late final _$plansAtom = Atom(
    name: 'PaywallStoreBase.plans',
    context: context,
  );

  @override
  List<SubscriptionPlan> get plans {
    _$plansAtom.reportRead();
    return super.plans;
  }

  @override
  set plans(List<SubscriptionPlan> value) {
    _$plansAtom.reportWrite(value, super.plans, () {
      super.plans = value;
    });
  }

  late final _$PaywallStoreBaseActionController = ActionController(
    name: 'PaywallStoreBase',
    context: context,
  );

  @override
  void _init() {
    final _$actionInfo = _$PaywallStoreBaseActionController.startAction(
      name: 'PaywallStoreBase._init',
    );
    try {
      return super._init();
    } finally {
      _$PaywallStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleFreeTrial() {
    final _$actionInfo = _$PaywallStoreBaseActionController.startAction(
      name: 'PaywallStoreBase.toggleFreeTrial',
    );
    try {
      return super.toggleFreeTrial();
    } finally {
      _$PaywallStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectPlan(SubscriptionPlan plan) {
    final _$actionInfo = _$PaywallStoreBaseActionController.startAction(
      name: 'PaywallStoreBase.selectPlan',
    );
    try {
      return super.selectPlan(plan);
    } finally {
      _$PaywallStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void highlightFreeTrialSwitcher() {
    final _$actionInfo = _$PaywallStoreBaseActionController.startAction(
      name: 'PaywallStoreBase.highlightFreeTrialSwitcher',
    );
    try {
      return super.highlightFreeTrialSwitcher();
    } finally {
      _$PaywallStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closePaywall() {
    final _$actionInfo = _$PaywallStoreBaseActionController.startAction(
      name: 'PaywallStoreBase.closePaywall',
    );
    try {
      return super.closePaywall();
    } finally {
      _$PaywallStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
variant: ${variant},
freeTrialEnabled: ${freeTrialEnabled},
highlightFreeTrial: ${highlightFreeTrial},
selectedPlan: ${selectedPlan},
features: ${features},
plans: ${plans},
proEnabledCount: ${proEnabledCount}
    ''';
  }
}
