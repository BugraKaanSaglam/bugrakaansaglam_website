import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../data/content.dart';
import '../global/app_theme.dart';
import '../global/global_functions.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = context.locale;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppTheme.border),
              ),
              child: const Icon(Icons.bolt, color: Colors.white),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buğra Kaan Sağlam',
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  tr('nav.role'),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ToggleButtons(
              isSelected: [
                locale.languageCode == 'en',
                locale.languageCode == 'tr',
              ],
              onPressed: (index) {
                final selected = index == 0 ? const Locale('en') : const Locale('tr');
                context.setLocale(selected);
              },
              borderRadius: BorderRadius.circular(12),
              selectedColor: Colors.black,
              fillColor: AppTheme.accent,
              color: Colors.white70,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(tr('nav.lang_en')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(tr('nav.lang_tr')),
                ),
              ],
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.copy, size: 18),
              label: Text(tr('nav.email')),
              onPressed: () => copyToClipboard(
                context,
                contactEmail,
                locale.languageCode == 'tr' ? 'Panoya kopyalandı' : 'Copied to clipboard',
              ),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.chat_bubble_outline, size: 18),
              label: Text(tr('nav.cta')),
              onPressed: () => copyToClipboard(
                context,
                contactEmail,
                locale.languageCode == 'tr' ? 'E-posta panoya kopyalandı' : 'Email copied to clipboard',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
