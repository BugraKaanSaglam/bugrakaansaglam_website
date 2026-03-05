import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/info_badge.dart';

class ExperienceTile extends StatelessWidget {
  const ExperienceTile({
    required this.experience,
    this.compact = false,
    super.key,
  });

  final Experience experience;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = context.locale;
    final highlights = experience.highlights;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Color(0x1E53E3C8), Color(0x1437536E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: AppTheme.border.withValues(alpha: 0.88)),
      ),
      child: Padding(
        padding: EdgeInsets.all(compact ? 14 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (compact)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    experience.role.ofLocale(locale),
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    experience.company.ofLocale(locale),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textMuted,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InfoBadge(label: experience.period.ofLocale(locale)),
                  if (experience.location != null) ...[
                    const SizedBox(height: 6),
                    Text(
                      experience.location!.ofLocale(locale),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppTheme.textMuted.withValues(alpha: 0.86),
                      ),
                    ),
                  ],
                ],
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        experience.role.ofLocale(locale),
                        style: theme.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        experience.company.ofLocale(locale),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textMuted,
                        ),
                      ),
                      if (experience.location != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          experience.location!.ofLocale(locale),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppTheme.textMuted.withValues(alpha: 0.86),
                          ),
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
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppTheme.textMuted,
              ),
            ),
            if (highlights.isNotEmpty) ...[
              const SizedBox(height: 12),
              ...highlights.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '• ',
                        style: TextStyle(color: AppTheme.textMuted),
                      ),
                      Expanded(
                        child: Text(
                          item.ofLocale(locale),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: AppTheme.textMuted,
                          ),
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
