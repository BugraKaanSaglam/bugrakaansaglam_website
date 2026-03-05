import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void copyToClipboard(BuildContext context, String value, String message) {
  Clipboard.setData(ClipboardData(text: value));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
  );
}

String? _normalizeExternalUrl(String url) {
  final condensed = url.trim().replaceAll(RegExp(r'\s+'), '');
  if (condensed.isEmpty) return null;

  final hasScheme =
      condensed.contains('://') ||
      condensed.startsWith('mailto:') ||
      condensed.startsWith('tel:');
  final normalized = hasScheme ? condensed : 'https://$condensed';

  final uri = Uri.tryParse(normalized);
  if (uri == null) return null;

  final isWeb = uri.scheme == 'http' || uri.scheme == 'https';
  if (isWeb && uri.host.isEmpty) return null;

  return uri.toString();
}

Future<void> openExternalUrl(BuildContext context, String url) async {
  final errorMessage = tr('errors.link_open_failed', context: context);
  final normalized = _normalizeExternalUrl(url);
  if (normalized == null) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(errorMessage)));
    return;
  }
  final uri = Uri.parse(normalized);

  final launched = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
    webOnlyWindowName: '_blank',
  );

  if (!launched && context.mounted) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(errorMessage)));
  }
}
