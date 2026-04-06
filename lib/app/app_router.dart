import 'package:bugrakaansaglam_website/features/portfolio/presentation/pages/app_redirect_page.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/pages/portfolio_page.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/pages/privacy_doc_page.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/viewmodels/portfolio_view_model.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter(this._portfolioViewModel);

  final PortfolioViewModel _portfolioViewModel;

  static const _duruGlobalRedirect = AppRedirectDestination(
    title: 'DuruGlobal',
    fallbackUrl: 'https://venturecapitalsdg.com/',
    iosUrl: 'https://apps.apple.com/ca/app/duruglobal/id6759501423',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.venturecapitalsdg.mobile',
  );

  static const _desk4DentRedirect = AppRedirectDestination(
    title: 'Desk4Dent',
    fallbackUrl: 'https://desk4dent.com/',
    iosUrl: 'https://apps.apple.com/ca/app/desk4dent/id6759098204',
  );

  static const _whatShouldIEatRedirect = AppRedirectDestination(
    title: 'What Should I Eat Today',
    fallbackUrl:
        'https://apps.apple.com/us/app/what-should-i-eat-today/id6741708205',
    iosUrl:
        'https://apps.apple.com/us/app/what-should-i-eat-today/id6741708205',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.whatshouldieattoday.mobile',
  );

  static const _miceAndPawsRedirect = AppRedirectDestination(
    title: 'Mice and Paws',
    fallbackUrl:
        'https://apps.apple.com/tr/app/mice-and-paws-cat-game/id6739187435',
    iosUrl: 'https://apps.apple.com/tr/app/mice-and-paws-cat-game/id6739187435',
    androidUrl:
        'https://play.google.com/store/apps/details?id=com.mice_and_paws_cat_game',
  );

  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>
            PortfolioPage(viewModel: _portfolioViewModel),
      ),
      GoRoute(
        path: '/duru-global',
        builder: (context, state) =>
            const AppRedirectPage(destination: _duruGlobalRedirect),
      ),
      GoRoute(
        path: '/duruglobal',
        redirect: (context, state) => '/duru-global',
      ),
      GoRoute(
        path: '/desk4dent',
        builder: (context, state) =>
            const AppRedirectPage(destination: _desk4DentRedirect),
      ),
      GoRoute(
        path: '/what-should-i-eat',
        builder: (context, state) =>
            const AppRedirectPage(destination: _whatShouldIEatRedirect),
      ),
      GoRoute(
        path: '/what-should-i-eat-today',
        redirect: (context, state) => '/what-should-i-eat',
      ),
      GoRoute(
        path: '/whatshouldieat',
        redirect: (context, state) => '/what-should-i-eat',
      ),
      GoRoute(
        path: '/whatshuldieat',
        redirect: (context, state) => '/what-should-i-eat',
      ),
      GoRoute(
        path: '/mice-and-paws',
        builder: (context, state) =>
            const AppRedirectPage(destination: _miceAndPawsRedirect),
      ),
      GoRoute(
        path: '/miceandpaws',
        redirect: (context, state) => '/mice-and-paws',
      ),
      GoRoute(
        path: '/privacy-policy/:slug',
        builder: (context, state) {
          final slug = state.pathParameters['slug'];
          final doc = slug == null
              ? null
              : _portfolioViewModel.findPrivacyDoc(slug);
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
