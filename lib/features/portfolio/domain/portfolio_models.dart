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
    this.iconAsset,
    this.links = const [],
    this.meta,
    this.finePrint,
    this.privacyDoc,
  });

  final LocalizedText title;
  final LocalizedText description;
  final List<LocalizedText> tags;
  final String? iconAsset;
  final List<ProjectLink> links;
  final LocalizedText? meta;
  final LocalizedText? finePrint;
  final PrivacyDoc? privacyDoc;
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
  const PrivacyDoc({
    required this.title,
    required this.content,
    required this.slug,
    this.link,
  });

  final LocalizedText title;
  final LocalizedText content;
  final String slug;
  final String? link;

  String get routePath => '/privacy-policy/$slug';
}

class ContactInfo {
  const ContactInfo({
    required this.email,
    required this.phone,
    required this.location,
    required this.linkedIn,
  });

  final String email;
  final String phone;
  final String location;
  final String linkedIn;
}

class PortfolioContent {
  const PortfolioContent({
    required this.aboutSummary,
    required this.privacyDocs,
    required this.skillGroups,
    required this.experiences,
    required this.projects,
    required this.education,
    required this.contactInfo,
  });

  final LocalizedText aboutSummary;
  final List<PrivacyDoc> privacyDocs;
  final List<SkillGroup> skillGroups;
  final List<Experience> experiences;
  final List<Project> projects;
  final Education education;
  final ContactInfo contactInfo;

  PrivacyDoc? privacyDocBySlug(String slug) {
    for (final doc in privacyDocs) {
      if (doc.slug == slug) return doc;
    }
    return null;
  }
}
