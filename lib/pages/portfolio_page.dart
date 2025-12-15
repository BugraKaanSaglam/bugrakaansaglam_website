import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
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
                      const SectionCard(
                        title: 'Hakkımda',
                        child: Text(
                          'Ürün odaklı bir yazılımcıyım. Flutter ile yüksek performanslı'
                          ' mobil ve web uygulamaları geliştiriyor, gerektiğinde'
                          ' TypeScript, Node ve bulut servisleriyle uçtan uca'
                          ' çözümler kuruyorum. Tasarımdan yayına kadar tüm süreci'
                          ' yalın, ölçülebilir ve sürdürülebilir kılmaya odaklanıyorum.',
                        ),
                      ),
                      const SizedBox(height: 32),
                      const SectionCard(
                        title: 'Beceriler',
                        child: SkillsWrap(
                          skills: [
                            'Flutter & Dart',
                            'Flutter Web',
                            'State Management',
                            'Native Bridges',
                            'TypeScript',
                            'Node.js',
                            'GraphQL / REST',
                            'PostgreSQL',
                            'Cloud & CI/CD',
                            'Observability',
                            'Design Systems',
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      SectionCard(
                        title: 'Seçili Projeler',
                        child: Column(
                          children: const [
                            ProjectCard(
                              project: Project(
                                title: 'Wellness Companion',
                                description:
                                    'Kişiye özel programlar, canlı koçluk ve'
                                    ' davranış analitiği içeren bir wellness'
                                    ' uygulaması. Gerçek zamanlı mesajlaşma ve'
                                    ' güvenli veri akışı için modern mimari.',
                                tags: ['Flutter', 'Supabase', 'Realtime', 'Clean Architecture'],
                              ),
                            ),
                            SizedBox(height: 16),
                            ProjectCard(
                              project: Project(
                                title: 'Field Service Suite',
                                description:
                                    'Teknisyenler için çevrimdışı çalışan saha'
                                    ' uygulaması. Planlama, denetim listeleri ve'
                                    ' fotoğraflı raporlama ile operasyon verimliliği.',
                                tags: ['Flutter Web', 'BLoC', 'Offline-first', 'Maps'],
                              ),
                            ),
                            SizedBox(height: 16),
                            ProjectCard(
                              project: Project(
                                title: 'Payments Dashboard',
                                description:
                                    'Ödeme takımları için birleşik gösterge paneli.'
                                    ' KPI takibi, alarm yönetimi ve otomatik rapor'
                                    ' akışlarıyla operasyonları görünür kıldı.',
                                tags: ['TypeScript', 'Microservices', 'Monitoring'],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      SectionCard(
                        title: 'Deneyim',
                        child: Column(
                          children: const [
                            ExperienceTile(
                              experience: Experience(
                                role: 'Kıdemli Flutter Geliştirici',
                                company: 'Freelance',
                                period: '2020 - bugün',
                                summary:
                                    'Ürün ekipleriyle birlikte mobil ve web çözümlerini'
                                    ' sıfırdan kurdum, tasarım sistemleri ve CI/CD'
                                    ' süreçlerini oturttum.',
                              ),
                            ),
                            SizedBox(height: 12),
                            ExperienceTile(
                              experience: Experience(
                                role: 'Yazılım Geliştirici',
                                company: 'Çeşitli Startuplar',
                                period: '2016 - 2020',
                                summary:
                                    'Fintek ve SaaS projelerinde full-stack görev aldım;'
                                    ' ölçeklenebilir API tasarımı, veri modelleri ve'
                                    ' performans optimizasyonları üstlendim.',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      const SectionCard(
                        title: 'İletişim',
                        child: ContactActions(),
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
