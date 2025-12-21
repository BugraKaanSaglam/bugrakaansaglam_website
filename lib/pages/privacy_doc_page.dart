import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../global/app_theme.dart';
import '../models/portfolio_models.dart';
import '../widgets/language_toggle.dart';
import '../widgets/section_card.dart';

class PrivacyDocPage extends StatelessWidget {
  const PrivacyDocPage({required PrivacyDoc doc, super.key})
      : doc = doc,
        isNotFound = false;
  const PrivacyDocPage.notFound({super.key})
      : doc = null,
        isNotFound = true;

  final PrivacyDoc? doc;
  final bool isNotFound;

  @override
  Widget build(BuildContext context) {
    final locale = context.locale;
    final title = isNotFound ? tr('privacy.not_found_title') : doc!.title.ofLocale(locale);
    final content = isNotFound ? tr('privacy.not_found_body') : doc!.content.ofLocale(locale);
    final canPop = GoRouter.of(context).canPop();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(canPop ? Icons.arrow_back_ios_new : Icons.home_outlined),
          onPressed: () {
            if (canPop) {
              context.pop();
            } else {
              context.go('/');
            }
          },
        ),
        title: const SizedBox.shrink(),
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: LanguageToggle(compact: true),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SectionCard(
                title: title,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      content,
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
