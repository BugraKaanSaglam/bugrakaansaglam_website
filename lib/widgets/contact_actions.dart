import 'package:flutter/material.dart';

import '../global/global_functions.dart';

class ContactActions extends StatelessWidget {
  const ContactActions({super.key});

  static const String _email = 'hello@bugrakaansaglam.com';
  static const String _linkedin = 'linkedin.com/in/bugrakaansaglam';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Yeni projeler, danışmanlık ya da ekip desteği için ulaşabilirsiniz.'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(icon: const Icon(Icons.mail_outline), label: const Text('E-posta'), onPressed: () => copyToClipboard(context, _email, 'E-posta panoya kopyalandı')),
            OutlinedButton.icon(icon: const Icon(Icons.person_outline), label: const Text('LinkedIn'), onPressed: () => copyToClipboard(context, _linkedin, 'LinkedIn adresi kopyalandı')),
          ],
        ),
      ],
    );
  }
}
