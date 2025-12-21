import 'package:bugrakaansaglam_website/models/portfolio_models.dart';
import 'package:go_router/go_router.dart';

import '../data/content.dart';
import '../pages/portfolio_page.dart';
import '../pages/privacy_doc_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const PortfolioPage()),
    GoRoute(
      path: '/privacy-policy/:slug',
      builder: (context, state) {
        final slug = state.pathParameters['slug'];
        PrivacyDoc? doc;
        if (slug != null) {
          try {
            doc = privacyDocs.firstWhere((item) => item.slug == slug);
          } catch (_) {
            doc = null;
          }
        }

        if (doc == null) {
          return const PrivacyDocPage.notFound();
        }

        return PrivacyDocPage(doc: doc);
      },
    ),
    GoRoute(
      path: '/privacy-policy-:slug',
      redirect: (context, state) {
        final slug = state.pathParameters['slug'];
        if (slug == null) return '/';
        return '/privacy-policy/$slug';
      },
    ),
    GoRoute(
      path: '/privicypolicy-:slug',
      redirect: (context, state) {
        final slug = state.pathParameters['slug'];
        if (slug == null) return '/';
        return '/privacy-policy/$slug';
      },
    ),
    GoRoute(
      path: '/privacy/:slug',
      redirect: (context, state) {
        final slug = state.pathParameters['slug'];
        if (slug == null) return '/';
        return '/privacy-policy/$slug';
      },
    ),
  ],
);
