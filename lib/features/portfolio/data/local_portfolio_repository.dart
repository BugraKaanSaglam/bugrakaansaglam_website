import 'package:bugrakaansaglam_website/features/portfolio/data/portfolio_content.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_repository.dart';

class LocalPortfolioRepository implements PortfolioRepository {
  LocalPortfolioRepository({PortfolioContent? content}) : _content = content ?? portfolioContent;

  final PortfolioContent _content;

  @override
  PortfolioContent getContent() => _content;

  @override
  PrivacyDoc? findPrivacyDoc(String slug) => _content.privacyDocBySlug(slug);
}
