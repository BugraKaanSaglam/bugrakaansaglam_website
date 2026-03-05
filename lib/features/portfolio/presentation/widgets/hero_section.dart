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
    final facts = [
      (
        label: tr('hero.facts.experience_label'),
        value: tr('hero.facts.experience_value'),
      ),
      (
        label: tr('hero.facts.enterprise_label'),
        value: tr('hero.facts.enterprise_value'),
      ),
      (
        label: tr('hero.facts.indie_label'),
        value: tr('hero.facts.indie_value'),
      ),
    ];
    final mailtoUrl = 'mailto:${contact.email}?subject=Project%20Inquiry';
    final titleStyle = isMobile
        ? theme.textTheme.displayLarge?.copyWith(fontSize: 36, height: 1.08)
        : theme.textTheme.displayLarge;

    final Widget intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoBadge(label: tr('hero.location'), icon: Icons.location_on_outlined),
        const SizedBox(height: 18),
        Text(tr('hero.title'), style: titleStyle),
        const SizedBox(height: 16),
        Text(
          tr('hero.subtitle'),
          style: theme.textTheme.bodyLarge?.copyWith(color: AppTheme.textMuted),
        ),
        SizedBox(height: isMobile ? 18 : 24),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: facts
              .map((fact) => QuickFact(label: fact.label, value: fact.value))
              .toList(),
        ),
        SizedBox(height: isMobile ? 20 : 26),
        if (isMobile)
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              icon: const Icon(Icons.mail_outline),
              label: Text(tr('hero.cta_meeting')),
              onPressed: () => openExternalUrl(context, mailtoUrl),
            ),
          )
        else
          FilledButton.icon(
            icon: const Icon(Icons.mail_outline),
            label: Text(tr('hero.cta_meeting')),
            onPressed: () => openExternalUrl(context, mailtoUrl),
          ),
      ],
    );

    final Widget statusCard = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFF2C4A67)),
        gradient: const LinearGradient(
          colors: [Color(0xCC122A41), Color(0xB0112238)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x66040A15),
            blurRadius: 34,
            offset: Offset(0, 18),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoBadge(label: tr('hero.now_building'), icon: Icons.radar_outlined),
          const SizedBox(height: 16),
          Text(
            tr('hero.status'),
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppTheme.textMuted,
            ),
          ),
          const SizedBox(height: 18),
          const Divider(color: Color(0xFF2B4561)),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: tags.map((skill) => SkillPill(skill: skill)).toList(),
          ),
          const SizedBox(height: 18),
          if (isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('hero.availability_label'),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textMuted,
                  ),
                ),
                const SizedBox(height: 10),
                _AvailabilityBadge(label: tr('hero.availability')),
              ],
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tr('hero.availability_label'),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textMuted,
                  ),
                ),
                _AvailabilityBadge(label: tr('hero.availability')),
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

class _AvailabilityBadge extends StatelessWidget {
  const _AvailabilityBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.accent.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.accent.withValues(alpha: 0.6)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.circle, color: AppTheme.accent, size: 10),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
