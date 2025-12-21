import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_models.dart';
import 'package:bugrakaansaglam_website/features/portfolio/domain/portfolio_repository.dart';

class PortfolioViewModel {
  const PortfolioViewModel(this._repository);

  final PortfolioRepository _repository;

  PortfolioContent get content => _repository.getContent();

  PrivacyDoc? findPrivacyDoc(String slug) => _repository.findPrivacyDoc(slug);
}
