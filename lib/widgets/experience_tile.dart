import 'package:flutter/material.dart';

import '../models/portfolio_models.dart';
import 'info_badge.dart';

class ExperienceTile extends StatelessWidget {
  const ExperienceTile({required this.experience, super.key});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(experience.role, style: theme.textTheme.titleLarge),
                    const SizedBox(height: 4),
                    Text(
                      experience.company,
                      style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                InfoBadge(label: experience.period),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              experience.summary,
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
