import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color background = Color(0xFF030A14);
  static const Color panel = Color(0xFF0C1A2A);
  static const Color border = Color(0xFF27435E);
  static const Color accent = Color(0xFF52E3C8);
  static const Color accentWarm = Color(0xFFF6B26B);
  static const Color textMuted = Color(0xFFA7BDD3);

  static const Gradient backgroundGradient = LinearGradient(
    colors: [Color(0xFF030A14), Color(0xFF0A1F33), Color(0xFF10292A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient cardGradient = LinearGradient(
    colors: [Color(0xFF10263B), Color(0xFF0D1D30)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static ThemeData buildTheme() {
    final baseTextTheme = GoogleFonts.manropeTextTheme();
    final displayTextTheme = GoogleFonts.spaceGroteskTextTheme(baseTextTheme);
    final colorScheme = ColorScheme.fromSeed(
      seedColor: accent,
      brightness: Brightness.dark,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: background,
      colorScheme: colorScheme,
      cardColor: panel,
      textTheme: displayTextTheme
          .copyWith(
            displayLarge: displayTextTheme.displayLarge?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: -1.4,
              height: 1.02,
              fontSize: 48,
            ),
            headlineMedium: displayTextTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: -0.8,
            ),
            titleLarge: displayTextTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
            titleMedium: displayTextTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: baseTextTheme.bodyLarge?.copyWith(height: 1.6),
            bodyMedium: baseTextTheme.bodyMedium?.copyWith(height: 1.58),
          )
          .apply(bodyColor: Colors.white, displayColor: Colors.white),
      cardTheme: CardThemeData(
        color: panel.withValues(alpha: 0.76),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
          side: const BorderSide(color: border),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: accent,
          foregroundColor: const Color(0xFF071B22),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 0.1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: BorderSide(color: border.withValues(alpha: 0.92)),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: panel.withValues(alpha: 0.7),
        labelStyle: const TextStyle(color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: border.withValues(alpha: 0.9)),
        ),
      ),
      dividerColor: border.withValues(alpha: 0.7),
    );
  }
}
