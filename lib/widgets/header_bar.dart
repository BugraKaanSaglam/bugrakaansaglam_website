import 'package:flutter/material.dart';

import '../global/app_theme.dart';
import '../global/global_functions.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  static const String _email = 'hello@bugrakaansaglam.com';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppTheme.border),
              ),
              child: const Icon(Icons.bolt, color: Colors.white),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buğra Kaan Sağlam',
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  'Flutter & ürün geliştirme',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            OutlinedButton.icon(
              icon: const Icon(Icons.copy, size: 18),
              label: const Text('E-posta'),
              onPressed: () => copyToClipboard(context, _email, 'E-posta kopyalandı'),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.chat_bubble_outline, size: 18),
              label: const Text('Projeye başlayalım'),
              onPressed: () => copyToClipboard(
                context,
                _email,
                'E-posta panoya kopyalandı',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
