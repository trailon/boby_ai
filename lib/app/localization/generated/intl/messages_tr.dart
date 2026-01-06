// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(price) => "Sadece \$${price} haftalık";

  static String m1(price) => "${price} / aylık";

  static String m2(price) => "${price} / haftalık";

  static String m3(price) => "${price} / yıllık";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "best_value": MessageLookupByLibrary.simpleMessage("En İyi Değer"),
        "continue_text": MessageLookupByLibrary.simpleMessage("Devam et"),
        "enable_free_trial": MessageLookupByLibrary.simpleMessage(
            "Ücretsiz Deneme Süresini Aktif Et"),
        "free": MessageLookupByLibrary.simpleMessage("ÜCRETSİZ"),
        "home_screen_for_you_section_title":
            MessageLookupByLibrary.simpleMessage("Senin İçin ⭐️"),
        "home_screen_movies_section_title":
            MessageLookupByLibrary.simpleMessage("Filmler 🎬"),
        "image_not_found":
            MessageLookupByLibrary.simpleMessage("Görsel bulunamadı"),
        "legal_links_1":
            MessageLookupByLibrary.simpleMessage("Kullanım Koşulları"),
        "legal_links_2": MessageLookupByLibrary.simpleMessage("Geri Satın Al"),
        "legal_links_3":
            MessageLookupByLibrary.simpleMessage("Gizlilik Politikası"),
        "monthly": MessageLookupByLibrary.simpleMessage("Aylık"),
        "onboarding_favorites_step_done_title":
            MessageLookupByLibrary.simpleMessage("Sonraki adıma devam et 👉"),
        "onboarding_favorites_step_intro_subtitle":
            MessageLookupByLibrary.simpleMessage("3 favori filmini seç"),
        "onboarding_favorites_step_intro_title":
            MessageLookupByLibrary.simpleMessage("Hoşgeldin"),
        "onboarding_genres_step_done_title":
            MessageLookupByLibrary.simpleMessage("Teşekkürler 👍"),
        "onboarding_genres_step_intro_subtitle":
            MessageLookupByLibrary.simpleMessage("2 favori türünü seç"),
        "onboarding_genres_step_intro_title":
            MessageLookupByLibrary.simpleMessage("Hoşgeldin"),
        "only_price_per_week": m0,
        "paywall_footer_cta_button_state_free_1":
            MessageLookupByLibrary.simpleMessage("3 Gün Ücretsiz"),
        "paywall_footer_cta_button_state_free_2":
            MessageLookupByLibrary.simpleMessage("Şimdi Ödeme Yapma"),
        "paywall_footer_cta_button_state_price":
            MessageLookupByLibrary.simpleMessage("MovieAI PRO\'u Aç"),
        "paywall_footer_title": MessageLookupByLibrary.simpleMessage(
            "Yeniden Yüklenebilir, İstediğiniz Zaman İptal Edilebilir"),
        "paywall_option_1":
            MessageLookupByLibrary.simpleMessage("Günlük Film Önerileri"),
        "paywall_option_2": MessageLookupByLibrary.simpleMessage(
            "AI-Destekli Film İncelemeleri"),
        "paywall_option_3": MessageLookupByLibrary.simpleMessage(
            "Kişiselleştirilmiş İzleme Listesi"),
        "paywall_option_4":
            MessageLookupByLibrary.simpleMessage("Reklamsız Deneyim"),
        "per_month": m1,
        "per_week": m2,
        "per_year": m3,
        "pro": MessageLookupByLibrary.simpleMessage("PRO"),
        "search_text": MessageLookupByLibrary.simpleMessage("Ara"),
        "weekly": MessageLookupByLibrary.simpleMessage("Haftalık"),
        "yearly": MessageLookupByLibrary.simpleMessage("Yıllık")
      };
}
