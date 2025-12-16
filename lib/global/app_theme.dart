import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color background = Color(0xFF0B1221);
  static const Color panel = Color(0xFF10182B);
  static const Color border = Color(0xFF1D2740);
  static const Color accent = Color(0xFF53E0C4);

  static const Gradient backgroundGradient = LinearGradient(colors: [Color(0xFF0B1221), Color(0xFF0E172F)], begin: Alignment.topLeft, end: Alignment.bottomRight);

  static const Gradient cardGradient = LinearGradient(colors: [Color(0xFF12203C), Color(0xFF0E1A32)], begin: Alignment.topLeft, end: Alignment.bottomRight);

  static ThemeData buildTheme() {
    final baseTextTheme = GoogleFonts.manropeTextTheme();
    final colorScheme = ColorScheme.fromSeed(seedColor: accent, brightness: Brightness.dark);

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      colorScheme: colorScheme,
      cardColor: panel,
      textTheme: baseTextTheme
          .copyWith(
            displayLarge: baseTextTheme.displayLarge?.copyWith(fontWeight: FontWeight.w700, letterSpacing: -1.1, fontSize: 44),
            headlineMedium: baseTextTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700, letterSpacing: -0.6),
            titleLarge: baseTextTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          )
          .apply(bodyColor: Colors.white, displayColor: Colors.white),
      cardTheme: CardThemeData(
        color: panel.withValues(alpha: 0.9),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: border),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: accent,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          textStyle: const TextStyle(fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: border),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: panel,
        labelStyle: const TextStyle(color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: border),
        ),
      ),
    );
  }
}
