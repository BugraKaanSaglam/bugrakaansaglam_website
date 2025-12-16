import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../data/content.dart';
import '../global/app_theme.dart';
import '../models/portfolio_models.dart';
import '../widgets/contact_actions.dart';
import '../widgets/experience_tile.dart';
import '../widgets/header_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/project_card.dart';
import '../widgets/section_card.dart';
import '../widgets/skills_wrap.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderBar(),
                      const SizedBox(height: 38),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final isWide = constraints.maxWidth > 900;
                          return HeroSection(isWide: isWide);
                        },
                      ),
                      const SizedBox(height: 42),
                      SectionCard(title: tr('sections.about'), child: Text(aboutSummary.ofLocale(locale))),
                      const SizedBox(height: 32),
                      SectionCard(
                        title: tr('sections.skills'),
                        child: _SkillsBlock(locale: locale),
                      ),
                      const SizedBox(height: 32),
                      SectionCard(
                        title: tr('sections.projects'),
                        child: Column(
                          children: [
                            ...projects.map(
                              (project) => Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ProjectCard(project: project),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      SectionCard(
                        title: tr('sections.experience'),
                        child: Column(
                          children: experiences
                              .map(
                                (exp) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: ExperienceTile(experience: exp),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      const SizedBox(height: 32),
                      SectionCard(
                        title: tr('sections.education'),
                        child: _EducationBlock(locale: locale, education: education),
                      ),
                      const SizedBox(height: 32),
                      SectionCard(title: tr('sections.contact'), child: const ContactActions()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SkillsBlock extends StatelessWidget {
  const _SkillsBlock({required this.locale});

  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: skillGroups
          .map(
            (group) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(group.title.ofLocale(locale), style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  SkillsWrap(skills: group.items),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

class _EducationBlock extends StatelessWidget {
  const _EducationBlock({required this.locale, required this.education});

  final Locale locale;
  final Education education;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(education.degree.ofLocale(locale), style: theme.textTheme.titleLarge),
        const SizedBox(height: 6),
        Text(education.school.ofLocale(locale), style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70)),
        const SizedBox(height: 4),
        Text(education.location.ofLocale(locale), style: theme.textTheme.bodySmall?.copyWith(color: Colors.white60)),
      ],
    );
  }
}
