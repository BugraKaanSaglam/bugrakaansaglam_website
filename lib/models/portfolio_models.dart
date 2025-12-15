import 'package:flutter/widgets.dart';

class LocalizedText {
  const LocalizedText({required this.en, required this.tr});

  final String en;
  final String tr;

  String ofLocale(Locale locale) => locale.languageCode == 'tr' ? tr : en;
}

class ProjectLink {
  const ProjectLink({required this.label, required this.url});

  final String label;
  final String url;
}

class Project {
  const Project({
    required this.title,
    required this.description,
    required this.tags,
    this.links = const [],
    this.meta,
  });

  final LocalizedText title;
  final LocalizedText description;
  final List<LocalizedText> tags;
  final List<ProjectLink> links;
  final LocalizedText? meta;
}

class Experience {
  const Experience({
    required this.role,
    required this.company,
    required this.period,
    required this.summary,
    this.highlights = const [],
    this.location,
  });

  final LocalizedText role;
  final LocalizedText company;
  final LocalizedText period;
  final LocalizedText summary;
  final List<LocalizedText> highlights;
  final LocalizedText? location;
}

class Education {
  const Education({
    required this.degree,
    required this.school,
    required this.location,
    required this.period,
  });

  final LocalizedText degree;
  final LocalizedText school;
  final LocalizedText location;
  final LocalizedText period;
}

class SkillGroup {
  const SkillGroup({required this.title, required this.items});

  final LocalizedText title;
  final List<LocalizedText> items;
}

class PrivacyDoc {
  const PrivacyDoc({required this.title, required this.content, this.link});

  final LocalizedText title;
  final LocalizedText content;
  final String? link;
}
