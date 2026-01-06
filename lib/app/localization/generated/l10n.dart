// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Continue`
  String get continue_text {
    return Intl.message(
      'Continue',
      name: 'continue_text',
      desc: 'Continue text for buttons and navigation',
      args: [],
    );
  }

  /// `Welcome`
  String get onboarding_favorites_step_intro_title {
    return Intl.message(
      'Welcome',
      name: 'onboarding_favorites_step_intro_title',
      desc:
          'Title for onboarding screen in favorites step when the user has not selected 3 favorite movies',
      args: [],
    );
  }

  /// `Choose your 3 favorite movies`
  String get onboarding_favorites_step_intro_subtitle {
    return Intl.message(
      'Choose your 3 favorite movies',
      name: 'onboarding_favorites_step_intro_subtitle',
      desc:
          'Subtitle for onboarding screen in favorites step when the user has not selected 3 favorite movies',
      args: [],
    );
  }

  /// `Continue to next step 👉`
  String get onboarding_favorites_step_done_title {
    return Intl.message(
      'Continue to next step 👉',
      name: 'onboarding_favorites_step_done_title',
      desc:
          'Title for onboarding screen in favorites step when the user has selected 3 favorite movies',
      args: [],
    );
  }

  /// `Welcome`
  String get onboarding_genres_step_intro_title {
    return Intl.message(
      'Welcome',
      name: 'onboarding_genres_step_intro_title',
      desc:
          'Title for onboarding screen in genres step when the user has not selected 2 favorite genres',
      args: [],
    );
  }

  /// `Choose your 2 favorite genres`
  String get onboarding_genres_step_intro_subtitle {
    return Intl.message(
      'Choose your 2 favorite genres',
      name: 'onboarding_genres_step_intro_subtitle',
      desc:
          'Subtitle for onboarding screen in genres step when the user has not selected 2 favorite genres',
      args: [],
    );
  }

  /// `Thank you 👍`
  String get onboarding_genres_step_done_title {
    return Intl.message(
      'Thank you 👍',
      name: 'onboarding_genres_step_done_title',
      desc:
          'Title for onboarding screen in genres step when the user has selected 2 favorite genres',
      args: [],
    );
  }

  /// `Daily Movie Suggestions`
  String get paywall_option_1 {
    return Intl.message(
      'Daily Movie Suggestions',
      name: 'paywall_option_1',
      desc: 'Title for paywall option 1',
      args: [],
    );
  }

  /// `AI-Powered Movie Insights`
  String get paywall_option_2 {
    return Intl.message(
      'AI-Powered Movie Insights',
      name: 'paywall_option_2',
      desc: 'Title for paywall option 2',
      args: [],
    );
  }

  /// `Personalized Watchlists`
  String get paywall_option_3 {
    return Intl.message(
      'Personalized Watchlists',
      name: 'paywall_option_3',
      desc: 'Title for paywall option 3',
      args: [],
    );
  }

  /// `Ad-Free Experience`
  String get paywall_option_4 {
    return Intl.message(
      'Ad-Free Experience',
      name: 'paywall_option_4',
      desc: 'Title for paywall option 4',
      args: [],
    );
  }

  /// `FREE`
  String get free {
    return Intl.message(
      'FREE',
      name: 'free',
      desc: 'Free text for subscription plans',
      args: [],
    );
  }

  /// `PRO`
  String get pro {
    return Intl.message(
      'PRO',
      name: 'pro',
      desc: 'Pro text for subscription plans',
      args: [],
    );
  }

  /// `Enable Free Trial`
  String get enable_free_trial {
    return Intl.message(
      'Enable Free Trial',
      name: 'enable_free_trial',
      desc: 'Enable free trial text for subscription plans',
      args: [],
    );
  }

  /// `Weekly`
  String get weekly {
    return Intl.message(
      'Weekly',
      name: 'weekly',
      desc: 'Weekly text for subscription plans',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: 'Monthly text for subscription plans',
      args: [],
    );
  }

  /// `Yearly`
  String get yearly {
    return Intl.message(
      'Yearly',
      name: 'yearly',
      desc: 'Yearly text for subscription plans',
      args: [],
    );
  }

  /// `Only ${price} per week`
  String only_price_per_week(String price) {
    return Intl.message(
      'Only \$$price per week',
      name: 'only_price_per_week',
      desc: 'Only price per week text for subscription plans',
      args: [price],
    );
  }

  /// `{price} / week`
  String per_week(String price) {
    return Intl.message(
      '$price / week',
      name: 'per_week',
      desc: 'Per week text for subscription plans',
      args: [price],
    );
  }

  /// `{price} / month`
  String per_month(String price) {
    return Intl.message(
      '$price / month',
      name: 'per_month',
      desc: 'Per month text for subscription plans',
      args: [price],
    );
  }

  /// `{price} / year`
  String per_year(String price) {
    return Intl.message(
      '$price / year',
      name: 'per_year',
      desc: 'Per year text for subscription plans',
      args: [price],
    );
  }

  /// `Auto Renewable, Cancel Anytime`
  String get paywall_footer_title {
    return Intl.message(
      'Auto Renewable, Cancel Anytime',
      name: 'paywall_footer_title',
      desc: 'Paywall footer title',
      args: [],
    );
  }

  /// `Unlock MovieAI PRO`
  String get paywall_footer_cta_button_state_price {
    return Intl.message(
      'Unlock MovieAI PRO',
      name: 'paywall_footer_cta_button_state_price',
      desc: 'Paywall footer cta button state price',
      args: [],
    );
  }

  /// `3 Days Free`
  String get paywall_footer_cta_button_state_free_1 {
    return Intl.message(
      '3 Days Free',
      name: 'paywall_footer_cta_button_state_free_1',
      desc: 'Paywall footer cta button state free 1',
      args: [],
    );
  }

  /// `No Payment Now`
  String get paywall_footer_cta_button_state_free_2 {
    return Intl.message(
      'No Payment Now',
      name: 'paywall_footer_cta_button_state_free_2',
      desc: 'Paywall footer cta button state free 2',
      args: [],
    );
  }

  /// `Terms of Use`
  String get legal_links_1 {
    return Intl.message(
      'Terms of Use',
      name: 'legal_links_1',
      desc: 'Legal links 1',
      args: [],
    );
  }

  /// `Restore Purchase`
  String get legal_links_2 {
    return Intl.message(
      'Restore Purchase',
      name: 'legal_links_2',
      desc: 'Legal links 2',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get legal_links_3 {
    return Intl.message(
      'Privacy Policy',
      name: 'legal_links_3',
      desc: 'Legal links 3',
      args: [],
    );
  }

  /// `Best Value`
  String get best_value {
    return Intl.message(
      'Best Value',
      name: 'best_value',
      desc: 'Best value text for subscription plans',
      args: [],
    );
  }

  /// `For You ⭐️`
  String get home_screen_for_you_section_title {
    return Intl.message(
      'For You ⭐️',
      name: 'home_screen_for_you_section_title',
      desc: 'Title for home screen for you section',
      args: [],
    );
  }

  /// `Movies 🎬`
  String get home_screen_movies_section_title {
    return Intl.message(
      'Movies 🎬',
      name: 'home_screen_movies_section_title',
      desc: 'Title for home screen movies section',
      args: [],
    );
  }

  /// `Search`
  String get search_text {
    return Intl.message(
      'Search',
      name: 'search_text',
      desc: 'Search text for home screen movies section',
      args: [],
    );
  }

  /// `Image not found`
  String get image_not_found {
    return Intl.message(
      'Image not found',
      name: 'image_not_found',
      desc: 'Image not found text for home screen movies section',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
