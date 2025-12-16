import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../models/portfolio_models.dart';
import '../widgets/language_toggle.dart';
import '../widgets/section_card.dart';

class PrivacyDocPage extends StatelessWidget {
  const PrivacyDocPage({required this.doc, super.key});

  final PrivacyDoc doc;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const SizedBox.shrink(),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: LanguageToggle(compact: true),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0B1221), Color(0xFF0E172F)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SectionCard(
                title: doc.title.ofLocale(locale),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc.content.ofLocale(locale),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white70,
                            height: 1.4,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
