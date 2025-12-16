import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../global/app_theme.dart';
import '../global/global_functions.dart';
import '../models/portfolio_models.dart';
import 'info_badge.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = context.locale;
    final buttons = <Widget>[];
    if (project.privacyDoc != null) {
      buttons.add(
        OutlinedButton.icon(
          icon: const Icon(Icons.privacy_tip_outlined, size: 16),
          label: Text(tr('privacy.button')),
          onPressed: () {
            context.push('/privacy/${project.privacyDoc!.slug}');
          },
        ),
      );
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    project.title.ofLocale(locale),
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                if (project.meta != null) ...[
                  const SizedBox(width: 12),
                  InfoBadge(label: project.meta!.ofLocale(locale)),
                ],
              ],
            ),
            const SizedBox(height: 10),
            Text(
              project.description.ofLocale(locale),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.tags
                  .map(
                    (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppTheme.border),
                      ),
                      child: Text(
                        tag.ofLocale(locale),
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  )
                  .toList(),
            ),
            if (project.links.isNotEmpty || buttons.isNotEmpty) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ...buttons,
                  ...project.links.map(
                    (link) => OutlinedButton.icon(
                      icon: const Icon(Icons.open_in_new, size: 16),
                      label: Text(link.label),
                      onPressed: () => openExternalUrl(context, link.url),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
