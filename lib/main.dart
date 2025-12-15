import 'package:flutter/material.dart';

import 'global/app_theme.dart';
import 'pages/portfolio_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buğra Kaan Sağlam | Yazılım Geliştirici',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildTheme(),
      home: const PortfolioPage(),
    );
  }
}
