import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copyToClipboard(BuildContext context, String value, String message) {
  Clipboard.setData(ClipboardData(text: value));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
