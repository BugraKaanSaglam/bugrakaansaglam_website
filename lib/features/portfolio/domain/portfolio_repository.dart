import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';

abstract class PortfolioRepository {
  PortfolioContent getContent();
  PrivacyDoc? findPrivacyDoc(String slug);
}
