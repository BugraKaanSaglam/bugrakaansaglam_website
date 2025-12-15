import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../data/content.dart';
import '../global/global_functions.dart';
import '../widgets/section_card.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('sections.privacy')),
        centerTitle: true,
        backgroundColor: Colors.transparent,
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
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            itemCount: privacyDocs.length,
            itemBuilder: (context, index) {
              final doc = privacyDocs[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: SectionCard(
                  title: doc.title.ofLocale(locale),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (doc.link != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: OutlinedButton.icon(
                            icon: const Icon(Icons.open_in_new, size: 16),
                            label: Text(doc.link!),
                            onPressed: () =>
                                openExternalUrl(context, doc.link!),
                          ),
                        ),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
