import 'package:flutter/material.dart';

class SkillPill extends StatelessWidget {
  const SkillPill({required this.skill, super.key});

  final String skill;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
