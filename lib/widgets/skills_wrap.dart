import 'package:flutter/material.dart';

import 'skill_pill.dart';

class SkillsWrap extends StatelessWidget {
  const SkillsWrap({required this.skills, super.key});

  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: skills.map((skill) => SkillPill(skill: skill)).toList(),
    );
  }
}
