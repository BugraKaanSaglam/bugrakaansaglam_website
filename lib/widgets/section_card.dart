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
    return Card(
      child: Padding(
        padding: EdgeInsets.all(compact ? 16 : 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: compact ? theme.textTheme.titleLarge : theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            DefaultTextStyle.merge(
              style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white70),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
