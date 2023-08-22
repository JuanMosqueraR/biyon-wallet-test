import 'dart:ui';

import 'package:code/generated/l10n.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class LocalizationConfig {
  static List<LocalizationsDelegate<Object>> localizationsDelegates = [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
  static List<Locale> supportedLocales = S.delegate.supportedLocales;
}
