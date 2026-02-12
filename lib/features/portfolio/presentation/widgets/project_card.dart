import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:bugrakaansaglam_website/core/utils/platform_actions.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/info_badge.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, this.compact = false, super.key});

  final Project project;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = context.locale;
    final buttons = <Widget>[];
    final iconAsset = project.iconAsset;
    if (project.privacyDoc != null) {
      buttons.add(
        OutlinedButton.icon(
          icon: const Icon(Icons.privacy_tip_outlined, size: 16),
          label: Text(tr('privacy.button')),
          onPressed: () {
            context.go(project.privacyDoc!.routePath);
          },
        ),
      );
    }
    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                project.title.ofLocale(locale),
                style: theme.textTheme.titleLarge,
              ),
            ),
            if (project.meta != null && !compact) ...[
              const SizedBox(width: 12),
              InfoBadge(label: project.meta!.ofLocale(locale)),
            ],
          ],
        ),
        if (project.meta != null && compact) ...[
          const SizedBox(height: 8),
          InfoBadge(label: project.meta!.ofLocale(locale)),
        ],
        const SizedBox(height: 10),
        Text(
          project.description.ofLocale(locale),
          style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
        ),
        if (project.tags.isNotEmpty) ...[
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
        ],
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
    );

    final image = iconAsset != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              iconAsset,
              width: 62,
              height: 62,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 62,
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.04),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppTheme.border),
                ),
                child: const Icon(
                  Icons.image_not_supported_outlined,
                  color: Colors.white54,
                ),
              ),
            ),
          )
        : null;

    return Card(
      child: Padding(
        padding: EdgeInsets.all(compact ? 14 : 18),
        child: compact
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (image != null) ...[
                    Center(child: image),
                    const SizedBox(height: 14),
                  ],
                  content,
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (image != null) ...[image, const SizedBox(width: 16)],
                  Expanded(child: content),
                ],
              ),
      ),
    );
  }
}
