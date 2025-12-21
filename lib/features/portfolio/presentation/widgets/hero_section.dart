import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:bugrakaansaglam_website/core/utils/platform_actions.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/info_badge.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/quick_fact.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/skill_pill.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    required this.isWide,
    required this.contact,
    this.isMobile = false,
    super.key,
  });

  final bool isWide;
  final bool isMobile;
  final ContactInfo contact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tags = [
      tr('hero.status_tags.motion'),
      tr('hero.status_tags.design'),
      tr('hero.status_tags.analytics'),
    ];
    final mailtoUrl = 'mailto:${contact.email}?subject=Project%20Inquiry';
    final Widget intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoBadge(label: tr('hero.location'), icon: Icons.location_on_outlined),
        const SizedBox(height: 18),
        Text(tr('hero.title'), style: theme.textTheme.displayLarge),
        const SizedBox(height: 16),
        Text(
          tr('hero.subtitle'),
          style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white70),
        ),
        SizedBox(height: isMobile ? 18 : 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            QuickFact(
              label: tr('hero.facts.label'),
              value: tr('hero.facts.value'),
            ),
          ],
        ),
        SizedBox(height: isMobile ? 18 : 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              icon: const Icon(Icons.calendar_today_outlined),
              label: Text(tr('hero.cta_meeting')),
              onPressed: () => openExternalUrl(context, mailtoUrl),
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
          InfoBadge(label: tr('hero.now_building'), icon: Icons.radar_outlined),
          const SizedBox(height: 16),
          Text(tr('hero.status'), style: theme.textTheme.bodyLarge),
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
                    const Icon(
                      Icons.circle,
                      color: Colors.greenAccent,
                      size: 10,
                    ),
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
      children: [intro, const SizedBox(height: 28), statusCard],
    );
  }
}
