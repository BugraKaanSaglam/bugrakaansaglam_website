import 'package:bugrakaansaglam_website/features/portfolio/presentation/pages/portfolio_page.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/pages/privacy_doc_page.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/viewmodels/portfolio_view_model.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter(this._portfolioViewModel);

  final PortfolioViewModel _portfolioViewModel;

  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => PortfolioPage(viewModel: _portfolioViewModel),
      ),
      GoRoute(
        path: '/privacy-policy/:slug',
        builder: (context, state) {
          final slug = state.pathParameters['slug'];
          final doc = slug == null ? null : _portfolioViewModel.findPrivacyDoc(slug);
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
}
