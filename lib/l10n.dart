import 'dart:ui';

import 'package:flutter/widgets.dart';

class SandboxLocalizations {
  final Locale locale;
  final Locale defaultLocale;

  static SandboxLocalizations of(BuildContext context) {
    return Localizations.of<SandboxLocalizations>(
        context, SandboxLocalizations);
  }

  SandboxLocalizations(this.locale, this.defaultLocale);

  static final Map<String, Map<Keys, String>> _localizationMap = {
    'en': {
      Keys.TITLE: 'Flutter sandbox',
      Keys.THEME_PAGE: 'Themes Page',
      Keys.COUNTER_PAGE: 'Counter Page',
      Keys.AVALIABLE_PAGES: 'Avaliable Pages',
      Keys.INITIAL_PAGE_DESCRIPTION: 'This is sandbox Flutter project',
      Keys.COLOR: 'Color',
      Keys.BRIGHTNESS: 'Brightness',
    },
    'ru': {
      Keys.TITLE: 'Тестовый проект',
      Keys.THEME_PAGE: 'Темы',
      Keys.COUNTER_PAGE: 'Счетчик',
      Keys.AVALIABLE_PAGES: 'Доступные страницы',
      Keys.INITIAL_PAGE_DESCRIPTION: 'Это тестовый проект на Flutter',
      Keys.COLOR: 'Цвет',
      Keys.BRIGHTNESS: 'Тема',
    },
  };

  static Iterable<String> get supportedLocales => _localizationMap.keys;

  String get title => _getValue(Keys.TITLE);
  String get themePage => _getValue(Keys.THEME_PAGE);
  String get counterPage => _getValue(Keys.COUNTER_PAGE);
  String get avaliablePages => _getValue(Keys.AVALIABLE_PAGES);
  String get initalPageDescription => _getValue(Keys.INITIAL_PAGE_DESCRIPTION);
  String get brightness => _getValue(Keys.BRIGHTNESS);
  String get color => _getValue(Keys.COLOR);

  String _getValue(Keys key) =>
      _localizationMap[locale.languageCode][key] ??
      _localizationMap[defaultLocale.languageCode][key];
}

enum Keys {
  TITLE,
  THEME_PAGE,
  COUNTER_PAGE,
  AVALIABLE_PAGES,
  INITIAL_PAGE_DESCRIPTION,
  COLOR,
  BRIGHTNESS,
}
