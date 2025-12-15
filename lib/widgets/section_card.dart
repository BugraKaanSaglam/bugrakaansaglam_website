import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({required this.title, required this.child, super.key});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: theme.textTheme.headlineMedium),
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
