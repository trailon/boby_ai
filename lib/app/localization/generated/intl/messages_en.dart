// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(price) => "Only \$${price} per week";

  static String m1(price) => "${price} / month";

  static String m2(price) => "${price} / week";

  static String m3(price) => "${price} / year";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "best_value": MessageLookupByLibrary.simpleMessage("Best Value"),
        "continue_text": MessageLookupByLibrary.simpleMessage("Continue"),
        "enable_free_trial":
            MessageLookupByLibrary.simpleMessage("Enable Free Trial"),
        "free": MessageLookupByLibrary.simpleMessage("FREE"),
        "home_screen_for_you_section_title":
            MessageLookupByLibrary.simpleMessage("For You ⭐️"),
        "home_screen_movies_section_title":
            MessageLookupByLibrary.simpleMessage("Movies 🎬"),
        "image_not_found":
            MessageLookupByLibrary.simpleMessage("Image not found"),
        "legal_links_1": MessageLookupByLibrary.simpleMessage("Terms of Use"),
        "legal_links_2":
            MessageLookupByLibrary.simpleMessage("Restore Purchase"),
        "legal_links_3": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
        "onboarding_favorites_step_done_title":
            MessageLookupByLibrary.simpleMessage("Continue to next step 👉"),
        "onboarding_favorites_step_intro_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Choose your 3 favorite movies"),
        "onboarding_favorites_step_intro_title":
            MessageLookupByLibrary.simpleMessage("Welcome"),
        "onboarding_genres_step_done_title":
            MessageLookupByLibrary.simpleMessage("Thank you 👍"),
        "onboarding_genres_step_intro_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "Choose your 2 favorite genres"),
        "onboarding_genres_step_intro_title":
            MessageLookupByLibrary.simpleMessage("Welcome"),
        "only_price_per_week": m0,
        "paywall_footer_cta_button_state_free_1":
            MessageLookupByLibrary.simpleMessage("3 Days Free"),
        "paywall_footer_cta_button_state_free_2":
            MessageLookupByLibrary.simpleMessage("No Payment Now"),
        "paywall_footer_cta_button_state_price":
            MessageLookupByLibrary.simpleMessage("Unlock MovieAI PRO"),
        "paywall_footer_title": MessageLookupByLibrary.simpleMessage(
            "Auto Renewable, Cancel Anytime"),
        "paywall_option_1":
            MessageLookupByLibrary.simpleMessage("Daily Movie Suggestions"),
        "paywall_option_2":
            MessageLookupByLibrary.simpleMessage("AI-Powered Movie Insights"),
        "paywall_option_3":
            MessageLookupByLibrary.simpleMessage("Personalized Watchlists"),
        "paywall_option_4":
            MessageLookupByLibrary.simpleMessage("Ad-Free Experience"),
        "per_month": m1,
        "per_week": m2,
        "per_year": m3,
        "pro": MessageLookupByLibrary.simpleMessage("PRO"),
        "search_text": MessageLookupByLibrary.simpleMessage("Search"),
        "weekly": MessageLookupByLibrary.simpleMessage("Weekly"),
        "yearly": MessageLookupByLibrary.simpleMessage("Yearly")
      };
}
