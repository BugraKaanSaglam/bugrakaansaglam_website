import 'package:bugrakaansaglam_website/core/utils/platform_actions.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContactActions extends StatelessWidget {
  const ContactActions({required this.contact, this.compact = false, super.key});

  final ContactInfo contact;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final telUrl = 'tel:${contact.phone.replaceAll(' ', '')}';
    Widget buttonBuilder(Widget button) => compact ? SizedBox(width: double.infinity, child: button) : button;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tr('contact.lead')),
        const SizedBox(height: 12),
        if (compact)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contact.location, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70)),
              Text(contact.phone, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70)),
              Text(contact.email, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70)),
            ],
          )
        else
          Text('${contact.location} | ${contact.phone} | ${contact.email}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70)),
        const SizedBox(height: 16),
        if (compact)
          Column(
            children: [
              buttonBuilder(FilledButton.icon(icon: const Icon(Icons.mail_outline), label: Text(tr('contact.email')), onPressed: () => openExternalUrl(context, 'mailto:${contact.email}?subject=Project%20Inquiry'))),
              const SizedBox(height: 10),
              buttonBuilder(OutlinedButton.icon(icon: const Icon(Icons.person_outline), label: Text(tr('contact.linkedin')), onPressed: () => openExternalUrl(context, contact.linkedIn))),
              const SizedBox(height: 10),
              buttonBuilder(OutlinedButton.icon(icon: const Icon(Icons.phone_outlined), label: Text(contact.phone), onPressed: () => openExternalUrl(context, telUrl))),
            ],
          )
        else
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              FilledButton.icon(icon: const Icon(Icons.mail_outline), label: Text(tr('contact.email')), onPressed: () => openExternalUrl(context, 'mailto:${contact.email}?subject=Project%20Inquiry')),
              OutlinedButton.icon(icon: const Icon(Icons.person_outline), label: Text(tr('contact.linkedin')), onPressed: () => openExternalUrl(context, contact.linkedIn)),
              OutlinedButton.icon(icon: const Icon(Icons.phone_outlined), label: Text(contact.phone), onPressed: () => openExternalUrl(context, telUrl)),
            ],
          ),
      ],
    );
  }
}
