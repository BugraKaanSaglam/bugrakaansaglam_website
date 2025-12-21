import 'package:bugrakaansaglam_website/app/app_router.dart';
import 'package:bugrakaansaglam_website/features/portfolio/data/local_portfolio_repository.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_repository.dart';
import 'package:bugrakaansaglam_website/features/portfolio/presentation/viewmodels/portfolio_view_model.dart';
import 'package:go_router/go_router.dart';

class AppDependencies {
  AppDependencies._();

  static final PortfolioRepository portfolioRepository = LocalPortfolioRepository();
  static final PortfolioViewModel portfolioViewModel = PortfolioViewModel(portfolioRepository);
  static final GoRouter router = AppRouter(portfolioViewModel).router;
}
