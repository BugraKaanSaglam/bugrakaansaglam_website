import 'package:bugrakaansaglam_website/app/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  const supportedLocales = [Locale('en'), Locale('tr')];
  const fallbackLocale = Locale('en');
  final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
  final startLocale = supportedLocales.firstWhere(
    (locale) => locale.languageCode == deviceLocale.languageCode,
    orElse: () => fallbackLocale,
  );
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      path: 'assets/translations',
      fallbackLocale: fallbackLocale,
      startLocale: startLocale,
      child: const App(),
    ),
  );
}
