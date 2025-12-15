class Project {
  const Project({
    required this.title,
    required this.description,
    required this.tags,
  });

  final String title;
  final String description;
  final List<String> tags;
}

class Experience {
  const Experience({
    required this.role,
    required this.company,
    required this.period,
    required this.summary,
  });

  final String role;
  final String company;
  final String period;
  final String summary;
}
