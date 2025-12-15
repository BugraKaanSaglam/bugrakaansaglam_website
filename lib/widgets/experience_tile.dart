import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/portfolio_models.dart';
import 'info_badge.dart';

class ExperienceTile extends StatelessWidget {
  const ExperienceTile({required this.experience, super.key});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = context.locale;
    final highlights = experience.highlights;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(experience.role.ofLocale(locale), style: theme.textTheme.titleLarge),
                    const SizedBox(height: 4),
                    Text(
                      experience.company.ofLocale(locale),
                      style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
                    ),
                    if (experience.location != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        experience.location!.ofLocale(locale),
                        style: theme.textTheme.bodySmall?.copyWith(color: Colors.white60),
                      ),
                    ],
                  ],
                ),
                InfoBadge(label: experience.period.ofLocale(locale)),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              experience.summary.ofLocale(locale),
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
            ),
            if (highlights.isNotEmpty) ...[
              const SizedBox(height: 12),
              ...highlights.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('• ', style: TextStyle(color: Colors.white70)),
                      Expanded(
                        child: Text(
                          item.ofLocale(locale),
                          style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
