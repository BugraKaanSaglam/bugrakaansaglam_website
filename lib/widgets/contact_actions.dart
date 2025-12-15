import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../data/content.dart';
import '../global/global_functions.dart';

class ContactActions extends StatelessWidget {
  const ContactActions({super.key});

  static const String _linkedin = 'https://www.linkedin.com/in/bugrakaansaglam';

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tr('contact.lead')),
        const SizedBox(height: 12),
        Text(
          '$contactLocation • $contactPhone • $contactEmail',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              icon: const Icon(Icons.mail_outline),
              label: Text(tr('contact.email')),
              onPressed: () => copyToClipboard(
                context,
                contactEmail,
                locale.languageCode == 'tr' ? 'E-posta panoya kopyalandı' : 'Email copied to clipboard',
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.person_outline),
              label: Text(tr('contact.linkedin')),
              onPressed: () => openExternalUrl(context, _linkedin),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.phone_outlined),
              label: Text(contactPhone),
              onPressed: () => copyToClipboard(
                context,
                contactPhone,
                locale.languageCode == 'tr' ? 'Telefon panoya kopyalandı' : 'Phone copied to clipboard',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
