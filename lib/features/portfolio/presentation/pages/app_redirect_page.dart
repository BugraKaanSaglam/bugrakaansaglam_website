import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:bugrakaansaglam_website/core/utils/platform_actions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppRedirectDestination {
  const AppRedirectDestination({
    required this.title,
    required this.fallbackUrl,
    this.iosUrl,
    this.androidUrl,
  });

  final String title;
  final String fallbackUrl;
  final String? iosUrl;
  final String? androidUrl;

  String resolveUrl() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return iosUrl ?? fallbackUrl;
      case TargetPlatform.android:
        return androidUrl ?? fallbackUrl;
      default:
        return fallbackUrl;
    }
  }
}

class AppRedirectPage extends StatefulWidget {
  const AppRedirectPage({required this.destination, super.key});

  final AppRedirectDestination destination;

  @override
  State<AppRedirectPage> createState() => _AppRedirectPageState();
}

class _AppRedirectPageState extends State<AppRedirectPage> {
  bool _didRedirect = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_didRedirect) return;
    _didRedirect = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      openExternalUrl(
        context,
        widget.destination.resolveUrl(),
        sameWindow: true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: AppTheme.cardGradient,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppTheme.border),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.destination.title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Yönlendiriliyor. Otomatik açılmazsa aşağıdaki butonu kullan.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.textMuted,
                      ),
                    ),
                    const SizedBox(height: 20),
                    FilledButton.icon(
                      onPressed: () => openExternalUrl(
                        context,
                        widget.destination.resolveUrl(),
                        sameWindow: true,
                      ),
                      icon: const Icon(Icons.open_in_new),
                      label: const Text('Open Link'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
