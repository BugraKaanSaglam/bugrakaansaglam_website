import 'package:bugrakaansaglam_website/app/app_theme.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/viewmodels/portfolio_view_model.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/contact_actions.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/experience_tile.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/header_bar.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/hero_section.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/project_card.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/section_card.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/skills_wrap.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({required this.viewModel, super.key});

  final PortfolioViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final content = viewModel.content;
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 720;
    final isWide = width > 900;
    final horizontalPadding = isMobile ? 16.0 : 24.0;
    final sectionGap = isMobile ? 24.0 : 32.0;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderBar(),
                      SizedBox(height: isMobile ? 26 : 38),
                      HeroSection(
                        isWide: isWide,
                        isMobile: isMobile,
                        contact: content.contactInfo,
                      ),
                      SizedBox(height: isMobile ? 30 : 42),
                      SectionCard(
                        title: tr('sections.about'),
                        compact: isMobile,
                        child: Text(content.aboutSummary.ofLocale(locale)),
                      ),
                      SizedBox(height: sectionGap),
                      SectionCard(
                        title: tr('sections.skills'),
                        compact: isMobile,
                        child: _SkillsBlock(
                          locale: locale,
                          skillGroups: content.skillGroups,
                        ),
                      ),
                      SizedBox(height: sectionGap),
                      SectionCard(
                        title: tr('sections.projects'),
                        compact: isMobile,
                        child: Column(
                          children: [
                            ...content.projects.map(
                              (project) => Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ProjectCard(
                                  project: project,
                                  compact: isMobile,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: sectionGap),
                      SectionCard(
                        title: tr('sections.experience'),
                        compact: isMobile,
                        child: Column(
                          children: content.experiences
                              .map(
                                (exp) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: ExperienceTile(
                                    experience: exp,
                                    compact: isMobile,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      SizedBox(height: sectionGap),
                      SectionCard(
                        title: tr('sections.education'),
                        compact: isMobile,
                        child: _EducationBlock(
                          locale: locale,
                          education: content.education,
                        ),
                      ),
                      SizedBox(height: sectionGap),
                      SectionCard(
                        title: tr('sections.contact'),
                        compact: isMobile,
                        child: ContactActions(
                          contact: content.contactInfo,
                          compact: isMobile,
                        ),
                      ),
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
  const _SkillsBlock({required this.locale, required this.skillGroups});

  final Locale locale;
  final List<SkillGroup> skillGroups;

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
