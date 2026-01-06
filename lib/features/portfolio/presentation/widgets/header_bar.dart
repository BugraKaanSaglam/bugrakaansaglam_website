import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/language_toggle.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconBadge = Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.border),
      ),
      child: const Icon(Icons.bolt, color: Colors.white),
    );
    final name = Text('Buğra Kaan Sağlam', style: theme.textTheme.titleLarge);
    final role = Text(
      tr('nav.role'),
      style: theme.textTheme.bodyMedium?.copyWith(
        color: Colors.white70,
      ),
    );

    if (compact) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconBadge,
              const LanguageToggle(compact: true),
            ],
          ),
          const SizedBox(height: 12),
          name,
          const SizedBox(height: 4),
          role,
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            iconBadge,
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                name,
                role,
              ],
            ),
          ],
        ),
        const LanguageToggle(),
      ],
    );
  }
}
