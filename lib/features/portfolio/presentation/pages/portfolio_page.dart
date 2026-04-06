import 'dart:ui';

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

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    required this.viewModel,
    this.initialProjectSlug,
    super.key,
  });

  final PortfolioViewModel viewModel;
  final String? initialProjectSlug;

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _revealController;
  final Map<String, GlobalKey> _projectKeys = {};

  @override
  void initState() {
    super.initState();
    _revealController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1450),
    )..forward();
    _scheduleProjectScroll();
  }

  @override
  void dispose() {
    _revealController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant PortfolioPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialProjectSlug != widget.initialProjectSlug) {
      _scheduleProjectScroll();
    }
  }

  void _scheduleProjectScroll() {
    final slug = widget.initialProjectSlug;
    if (slug == null || slug.isEmpty) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final key = _projectKeys[slug];
      final targetContext = key?.currentContext;
      if (targetContext == null) return;
      Scrollable.ensureVisible(
        targetContext,
        duration: const Duration(milliseconds: 650),
        curve: Curves.easeInOutCubic,
        alignment: 0.08,
      );
    });
  }

  Widget _reveal({
    required double start,
    required double end,
    required Widget child,
  }) {
    final curve = CurvedAnimation(
      parent: _revealController,
      curve: Interval(start, end, curve: Curves.easeOutCubic),
    );
    return AnimatedBuilder(
      animation: curve,
      child: child,
      builder: (context, child) {
        final value = curve.value;
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, (1 - value) * 24),
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final content = widget.viewModel.content;
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 760;
    final isWide = width > 980;
    final horizontalPadding = isMobile ? 16.0 : 26.0;
    final verticalPadding = isMobile ? 20.0 : 30.0;
    final sectionGap = isMobile ? 22.0 : 30.0;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: Stack(
          children: [
            Positioned.fill(
              child: IgnorePointer(
                child: AnimatedBuilder(
                  animation: _revealController,
                  builder: (context, _) {
                    return _AmbientBackdrop(progress: _revealController.value);
                  },
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1140),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: verticalPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _reveal(
                            start: 0,
                            end: 0.22,
                            child: HeaderBar(compact: isMobile),
                          ),
                          SizedBox(height: isMobile ? 26 : 40),
                          _reveal(
                            start: 0.1,
                            end: 0.38,
                            child: HeroSection(
                              isWide: isWide,
                              isMobile: isMobile,
                              contact: content.contactInfo,
                            ),
                          ),
                          SizedBox(height: isMobile ? 30 : 44),
                          _reveal(
                            start: 0.2,
                            end: 0.48,
                            child: SectionCard(
                              title: tr('sections.about'),
                              compact: isMobile,
                              child: Text(
                                content.aboutSummary.ofLocale(locale),
                              ),
                            ),
                          ),
                          SizedBox(height: sectionGap),
                          _reveal(
                            start: 0.26,
                            end: 0.56,
                            child: SectionCard(
                              title: tr('sections.skills'),
                              compact: isMobile,
                              child: _SkillsBlock(
                                locale: locale,
                                skillGroups: content.skillGroups,
                              ),
                            ),
                          ),
                          SizedBox(height: sectionGap),
                          _reveal(
                            start: 0.32,
                            end: 0.64,
                            child: SectionCard(
                              title: tr('sections.projects'),
                              compact: isMobile,
                              child: Column(
                                children: [
                                  ...content.projects.map(
                                    (project) => Padding(
                                      key: _projectKeys.putIfAbsent(
                                        project.slug,
                                        GlobalKey.new,
                                      ),
                                      padding: const EdgeInsets.only(
                                        bottom: 16,
                                      ),
                                      child: ProjectCard(
                                        project: project,
                                        compact: isMobile,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: sectionGap),
                          _reveal(
                            start: 0.4,
                            end: 0.72,
                            child: SectionCard(
                              title: tr('sections.experience'),
                              compact: isMobile,
                              child: Column(
                                children: content.experiences
                                    .map(
                                      (exp) => Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        child: ExperienceTile(
                                          experience: exp,
                                          compact: isMobile,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                          SizedBox(height: sectionGap),
                          _reveal(
                            start: 0.48,
                            end: 0.8,
                            child: SectionCard(
                              title: tr('sections.education'),
                              compact: isMobile,
                              child: _EducationBlock(
                                locale: locale,
                                education: content.education,
                              ),
                            ),
                          ),
                          SizedBox(height: sectionGap),
                          _reveal(
                            start: 0.56,
                            end: 0.86,
                            child: SectionCard(
                              title: tr('sections.references'),
                              compact: isMobile,
                              child: _ReferencesBlock(
                                locale: locale,
                                references: content.references,
                              ),
                            ),
                          ),
                          SizedBox(height: sectionGap),
                          _reveal(
                            start: 0.64,
                            end: 0.9,
                            child: SectionCard(
                              title: tr('sections.contact'),
                              compact: isMobile,
                              child: ContactActions(
                                contact: content.contactInfo,
                                compact: isMobile,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AmbientBackdrop extends StatelessWidget {
  const _AmbientBackdrop({required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    final shift = (1 - progress) * 80;
    return Stack(
      children: [
        Positioned(
          top: -130 + shift,
          left: -80,
          child: _GlowOrb(
            size: 320,
            color: const Color(0x5052E3C8),
            blurSigma: 70,
          ),
        ),
        Positioned(
          top: 180,
          right: -120 + shift * 0.5,
          child: _GlowOrb(
            size: 380,
            color: const Color(0x3AA2C8FF),
            blurSigma: 72,
          ),
        ),
        Positioned(
          bottom: -140,
          left: 120,
          child: _GlowOrb(
            size: 360,
            color: const Color(0x40F6B26B),
            blurSigma: 76,
          ),
        ),
      ],
    );
  }
}

class _GlowOrb extends StatelessWidget {
  const _GlowOrb({
    required this.size,
    required this.color,
    required this.blurSigma,
  });

  final double size;
  final Color color;
  final double blurSigma;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [color, color.withValues(alpha: 0)],
            stops: const [0.24, 1],
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
                  Text(
                    group.title.ofLocale(locale),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
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
        Text(
          education.degree.ofLocale(locale),
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 6),
        Text(
          education.school.ofLocale(locale),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppTheme.textMuted,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${education.location.ofLocale(locale)} • ${education.period.ofLocale(locale)}',
          style: theme.textTheme.bodySmall?.copyWith(
            color: AppTheme.textMuted.withValues(alpha: 0.86),
          ),
        ),
      ],
    );
  }
}

class _ReferencesBlock extends StatelessWidget {
  const _ReferencesBlock({required this.locale, required this.references});

  final Locale locale;
  final List<ReferenceEntry> references;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: references
          .map(
            (reference) => Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: AppTheme.border.withValues(alpha: 0.86),
                ),
                color: Colors.white.withValues(alpha: 0.03),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reference.name.ofLocale(locale),
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    reference.role.ofLocale(locale),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textMuted,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    reference.comment.ofLocale(locale),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textMuted,
                    ),
                  ),
                  if (reference.email != null || reference.phone != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      [
                        if (reference.email != null) reference.email!,
                        if (reference.phone != null) reference.phone!,
                      ].join(' • '),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppTheme.textMuted.withValues(alpha: 0.84),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
