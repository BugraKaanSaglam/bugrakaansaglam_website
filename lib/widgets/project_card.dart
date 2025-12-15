import 'package:flutter/material.dart';

import '../global/app_theme.dart';
import '../models/portfolio_models.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  project.title,
                  style: theme.textTheme.titleLarge,
                ),
                const Icon(Icons.arrow_outward, color: Colors.white54, size: 20),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              project.description,
              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.tags
                  .map(
                    (tag) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppTheme.border),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
