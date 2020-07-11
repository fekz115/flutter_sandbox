import 'package:NewSandbox/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SandboxLocalizationsDelegate
    extends LocalizationsDelegate<SandboxLocalizations> {
  const SandboxLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return SandboxLocalizations.supportedLocales.contains(locale.languageCode);
  }

  @override
  Future<SandboxLocalizations> load(Locale locale) {
    return SynchronousFuture<SandboxLocalizations>(
        SandboxLocalizations(locale, Locale('en')));
  }

  @override
  bool shouldReload(LocalizationsDelegate<SandboxLocalizations> old) {
    return false;
  }
}
