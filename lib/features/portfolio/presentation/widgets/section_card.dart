import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    required this.title,
    required this.child,
    this.compact = false,
    super.key,
  });

  final String title;
  final Widget child;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: AppTheme.cardGradient,
        border: Border.all(color: AppTheme.border.withValues(alpha: 0.86)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x60020510),
            blurRadius: 28,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(compact ? 16 : 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 4,
                  height: compact ? 20 : 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [AppTheme.accent, AppTheme.accentWarm],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: compact
                        ? theme.textTheme.titleLarge
                        : theme.textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DefaultTextStyle.merge(
              style: theme.textTheme.bodyLarge?.copyWith(
                color: AppTheme.textMuted,
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
