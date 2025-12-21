import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:bugrakaansaglam_website/app/app_theme.dart';

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return ToggleButtons(
      isSelected: [
        locale.languageCode == 'en',
        locale.languageCode == 'tr',
      ],
      onPressed: (index) {
        final selected = index == 0 ? const Locale('en') : const Locale('tr');
        context.setLocale(selected);
      },
      constraints: BoxConstraints(
        minHeight: compact ? 34 : 40,
      ),
      borderRadius: BorderRadius.circular(compact ? 10 : 12),
      selectedColor: Colors.black,
      fillColor: AppTheme.accent,
      color: Colors.white70,
      borderColor: AppTheme.border,
      selectedBorderColor: AppTheme.accent,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: compact ? 8 : 10),
          child: Text(
            tr('nav.lang_en'),
            style: compact ? Theme.of(context).textTheme.labelMedium : null,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: compact ? 8 : 10),
          child: Text(
            tr('nav.lang_tr'),
            style: compact ? Theme.of(context).textTheme.labelMedium : null,
          ),
        ),
      ],
    );
  }
}
