import 'package:flutter/material.dart';

import '../global/app_theme.dart';
import '../global/global_functions.dart';
import 'info_badge.dart';
import 'quick_fact.dart';
import 'skill_pill.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({required this.isWide, super.key});

  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Widget intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const InfoBadge(
          label: 'İstanbul / Remote',
          icon: Icons.location_on_outlined,
        ),
        const SizedBox(height: 18),
        Text(
          'Ürün odaklı mobil ve web deneyimleri tasarlıyorum.',
          style: theme.textTheme.displayLarge,
        ),
        const SizedBox(height: 16),
        Text(
          'Fintekten sahaya uzanan projelerde ekiplerle birlikte çalışıyor,'
          ' sade kod, güçlü test altyapısı ve ölçülebilir teslimat üzerine'
          ' odaklanıyorum.',
          style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: const [
            QuickFact(label: '8+ yıl', value: 'deneyim'),
            QuickFact(label: '24', value: 'tamamlanan proje'),
            QuickFact(label: '2 hafta', value: 'MVP süresi'),
          ],
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              icon: const Icon(Icons.calendar_today_outlined),
              label: const Text('Görüşme planla'),
              onPressed: () => copyToClipboard(
                context,
                'hello@bugrakaansaglam.com',
                'E-posta panoya kopyalandı',
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.download_outlined),
              label: const Text('Özet CV'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('PDF linkini ekleyin veya dosyayı bağlayın.'),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );

    final Widget statusCard = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF233152)),
        gradient: AppTheme.cardGradient,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 26,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InfoBadge(
            label: 'Şu sıralar',
            icon: Icons.radar_outlined,
          ),
          const SizedBox(height: 16),
          Text(
            'Performanslı Flutter deneyimleri için tasarım sistemleri ve'
            ' animasyon kütüphaneleri geliştiriyorum.',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const Divider(color: Color(0xFF233152)),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              SkillPill(skill: 'Motion'),
              SkillPill(skill: 'Design Tokens'),
              SkillPill(skill: 'A/B & Analitik'),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Müsaitlik',
                style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.circle, color: Colors.greenAccent, size: 10),
                    SizedBox(width: 6),
                    Text(
                      'Yeni projelere açık',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: intro),
          const SizedBox(width: 28),
          Expanded(child: statusCard),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        intro,
        const SizedBox(height: 28),
        statusCard,
      ],
    );
  }
}
