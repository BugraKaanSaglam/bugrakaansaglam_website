import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'global/app_theme.dart';
import 'global/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('tr')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AppWithSplash();
  }
}

class _AppWithSplash extends StatefulWidget {
  const _AppWithSplash();

  @override
  State<_AppWithSplash> createState() => _AppWithSplashState();
}

class _AppWithSplashState extends State<_AppWithSplash> {
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _warmUp();
  }

  Future<void> _warmUp() async {
    await Future.wait([
      WidgetsBinding.instance.endOfFrame,
      Future.delayed(const Duration(milliseconds: 450)),
    ]);
    if (mounted) {
      setState(() {
        _ready = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: tr('app_title'),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildTheme(),
      routerConfig: appRouter,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        return Stack(
          children: [
            child ?? const SizedBox.shrink(),
            IgnorePointer(
              ignoring: _ready,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 280),
                opacity: _ready ? 0 : 1,
                child: Container(
                  decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 46,
                          height: 46,
                          child: CircularProgressIndicator(
                            strokeWidth: 4,
                            valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accent),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Loading...',
                          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
