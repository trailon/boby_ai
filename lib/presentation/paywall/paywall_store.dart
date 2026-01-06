import 'package:boby_ai/app/router/router.dart';
import 'package:boby_ai/app/router/router.gr.dart';
import 'package:boby_ai/domain/entity/paywall_feature.dart';
import 'package:boby_ai/domain/entity/paywall_variant.dart';
import 'package:boby_ai/domain/entity/subscription_plan.dart';
import 'package:boby_ai/domain/usecase/get_paywall_config.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'paywall_store.g.dart';

@injectable
class PaywallStore = PaywallStoreBase with _$PaywallStore;

abstract class PaywallStoreBase with Store {
  final GetPaywallConfig getConfig;

  PaywallStoreBase(this.getConfig) {
    _init();
  }

  @observable
  PaywallVariant variant = PaywallVariant.variantB;

  @observable
  bool freeTrialEnabled = false;

  @observable
  bool highlightFreeTrial = false;

  @observable
  SubscriptionPlan? selectedPlan;

  @computed
  int get proEnabledCount => selectedPlan?.period.enabledFeatures ?? 0;

  @observable
  List<PaywallFeature> features = [];

  @observable
  List<SubscriptionPlan> plans = [];

  @action
  void _init() {
    variant = getConfig.getVariant();
    features = getConfig.getFeatures();
    plans = getConfig.getPlans();
    selectedPlan = plans.first;
  }

  @action
  void toggleFreeTrial() {
    freeTrialEnabled = !freeTrialEnabled;
  }

  @action
  void selectPlan(SubscriptionPlan plan) {
    // If free trial is enabled, highlight the free trial switcher instead of selecting plan
    if (freeTrialEnabled) {
      highlightFreeTrialSwitcher();
      return;
    }
    selectedPlan = plan;
  }

  @action
  void highlightFreeTrialSwitcher() {
    highlightFreeTrial = true;
    // Reset highlight after animation completes (1 second)
    Future.delayed(const Duration(seconds: 1), () {
      highlightFreeTrial = false;
    });
  }

  @action
  void closePaywall() {
    appRouter.replaceAll([const HomeRoute()]);
  }
}
