import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../data/content.dart';
import '../global/app_theme.dart';
import '../global/global_functions.dart';
import 'info_badge.dart';
import 'quick_fact.dart';
import 'skill_pill.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({required this.isWide, super.key});

  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = context.locale;
    final tags = [
      tr('hero.status_tags.motion'),
      tr('hero.status_tags.design'),
      tr('hero.status_tags.analytics'),
    ];
    final Widget intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoBadge(label: tr('hero.location'), icon: Icons.location_on_outlined),
        const SizedBox(height: 18),
        Text(
          tr('hero.title'),
          style: theme.textTheme.displayLarge,
        ),
        const SizedBox(height: 16),
        Text(
          tr('hero.subtitle'),
          style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            QuickFact(label: tr('hero.facts.years'), value: '8+'),
            QuickFact(label: tr('hero.facts.projects'), value: '24'),
            QuickFact(label: tr('hero.facts.mvp'), value: '2'),
          ],
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              icon: const Icon(Icons.calendar_today_outlined),
              label: Text(tr('hero.cta_meeting')),
              onPressed: () => copyToClipboard(
                context,
                contactEmail,
                locale.languageCode == 'tr' ? 'E-posta panoya kopyalandı' : 'Email copied to clipboard',
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.download_outlined),
              label: Text(tr('hero.cta_resume')),
              onPressed: () => copyToClipboard(
                context,
                contactEmail,
                locale.languageCode == 'tr' ? 'İletişim bilgisi panoya kopyalandı' : 'Contact copied to clipboard',
              ),
            ),
          ],
        ),
      ],
    );

    final Widget statusCard = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF233152)),
        gradient: AppTheme.cardGradient,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 26,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoBadge(
            label: tr('hero.now_building'),
            icon: Icons.radar_outlined,
          ),
          const SizedBox(height: 16),
          Text(
            tr('hero.status'),
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const Divider(color: Color(0xFF233152)),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: tags.map((skill) => SkillPill(skill: skill)).toList(),
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr('hero.availability_label'),
                style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.circle, color: Colors.greenAccent, size: 10),
                    const SizedBox(width: 6),
                    Text(
                      tr('hero.availability'),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: intro),
          const SizedBox(width: 28),
          Expanded(child: statusCard),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        intro,
        const SizedBox(height: 28),
        statusCard,
      ],
    );
  }
}
