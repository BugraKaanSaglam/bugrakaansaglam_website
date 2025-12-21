import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/widgets/skill_pill.dart';

class SkillsWrap extends StatelessWidget {
  const SkillsWrap({required this.skills, super.key});

  final List<LocalizedText> skills;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: skills
          .map((skill) => SkillPill(skill: skill.ofLocale(locale)))
          .toList(),
    );
  }
}
