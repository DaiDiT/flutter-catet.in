import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// 1. Definisi Palette Warna Mentah dari Figma
class AppColors {
  // ─── Shared ───────────────────────────────────────────────
  static const green = Color(0xFF1DC779);
  static const red = Color(0xFFE84545);
  static const white = Colors.white;

  // ─── Light Mode ───────────────────────────────────────────
  static const lightScaffold = Color(0xFFF5F5F7);
  static const lightCard = Color(0xFFFFFFFF);
  static const lightAccent = Color(0xFFECEC21); // Yellow
  static const lightTextPrimary = Color(0xFF111111);
  static const lightTextSecondary = Color(0xFF888888);
  static const lightChipActive = Color(0xFF111111);
  static const lightChipBg = Color(0xFFEEEEEE);

  // ─── Dark Mode ────────────────────────────────────────────
  static const darkScaffold = Color(0xFF0E0E12);
  static const darkCard = Color(0xFF1A1A24);
  static const darkAccent = Color(0xFF7B3FF4); // Purple
  static const darkTextPrimary = Color(0xFFFFFFFF);
  static const darkTextSecondary = Color(0xFF888899);
  static const darkChipActive = Color(0xFF7B3FF4);
  static const darkChipBg = Color(0xFF242430);
}

/// 2. Theme Management Utama
class AppTheme {
  AppTheme._();

  // ─────────────────────────── LIGHT THEME ──────────────────────────
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffold,
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightAccent,
      secondary: AppColors.lightCard,
      surface: AppColors.lightCard,
      onPrimary: AppColors.lightTextPrimary,
      onSurface: AppColors.lightTextPrimary,
      error: AppColors.red,
      tertiary: AppColors.green,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightScaffold,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
    ),
    cardTheme: _buildCardTheme(AppColors.lightCard),
    textTheme: _buildTextTheme(),
    extensions: const [AppThemeColors.light],
  );

  // ─────────────────────────── DARK THEME ───────────────────────────
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkScaffold,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkAccent,
      secondary: AppColors.darkCard,
      surface: AppColors.darkCard,
      onPrimary: AppColors.white,
      onSurface: AppColors.darkTextPrimary,
      error: AppColors.red,
      tertiary: AppColors.green,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkScaffold,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
    ),
    cardTheme: _buildCardTheme(AppColors.darkCard),
    textTheme: _buildTextTheme(),
    extensions: const [AppThemeColors.dark],
  );

  // Helper untuk Card yang seragam
  static CardThemeData _buildCardTheme(Color color) => CardThemeData(
    color: color,
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
  );

  // ─────────────────────────── TYPOGRAPHY MAPPING ──────────────────────────
  static TextTheme _buildTextTheme() {
    return TextTheme(
      // Detail Transaksi (36px ExtraBold)
      displayLarge: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w800,
        fontSize: 36.sp,
      ),
      // Display Balance (30px ExtraBold)
      displayMedium: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w800,
        fontSize: 30.sp,
      ),
      // Display Income/Expense (18px SemiBold)
      displaySmall: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
      ),
      // Name User (24px Bold)
      headlineMedium: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 24.sp,
      ),
      // Title List (18px Bold)
      titleLarge: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 18.sp,
      ),
      // Title Transaksi / Nilai (16px Bold)
      titleMedium: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 16.sp,
      ),
      // Title Balance / Lihat Semua (14px SemiBold)
      titleSmall: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
      ),
      // Selamat / Filter (14px Medium)
      labelLarge: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      ),
      // Currency / Hari ini (12px SemiBold)
      labelMedium: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w600,
        fontSize: 12.sp,
      ),
      // Navbar (10px SemiBold)
      labelSmall: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w600,
        fontSize: 10.sp,
      ),
      // Display Detail Transaksi (12px Regular)
      bodySmall: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.normal,
        fontSize: 12.sp,
      ),
    );
  }
}

/// 3. Theme Extension untuk Warna Custom (Non-Material)
@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final Color accent;
  final Color cardBg;
  final Color chipActiveBg;
  final Color chipBg;
  final Color textPrimary;
  final Color textSecondary;
  final Color scaffoldBg;

  const AppThemeColors({
    required this.accent,
    required this.cardBg,
    required this.chipActiveBg,
    required this.chipBg,
    required this.textPrimary,
    required this.textSecondary,
    required this.scaffoldBg,
  });

  static const light = AppThemeColors(
    accent: AppColors.lightAccent,
    cardBg: AppColors.lightCard,
    chipActiveBg: AppColors.lightChipActive,
    chipBg: AppColors.lightChipBg,
    textPrimary: AppColors.lightTextPrimary,
    textSecondary: AppColors.lightTextSecondary,
    scaffoldBg: AppColors.lightScaffold,
  );

  static const dark = AppThemeColors(
    accent: AppColors.darkAccent,
    cardBg: AppColors.darkCard,
    chipActiveBg: AppColors.darkChipActive,
    chipBg: AppColors.darkChipBg,
    textPrimary: AppColors.darkTextPrimary,
    textSecondary: AppColors.darkTextSecondary,
    scaffoldBg: AppColors.darkScaffold,
  );

  @override
  AppThemeColors copyWith({
    Color? accent,
    Color? cardBg,
    Color? chipActiveBg,
    Color? chipBg,
    Color? textPrimary,
    Color? textSecondary,
    Color? scaffoldBg,
  }) =>
      AppThemeColors(
        accent: accent ?? this.accent,
        cardBg: cardBg ?? this.cardBg,
        chipActiveBg: chipActiveBg ?? this.chipActiveBg,
        chipBg: chipBg ?? this.chipBg,
        textPrimary: textPrimary ?? this.textPrimary,
        textSecondary: textSecondary ?? this.textSecondary,
        scaffoldBg: scaffoldBg ?? this.scaffoldBg,
      );

  @override
  AppThemeColors lerp(AppThemeColors? other, double t) {
    if (other == null) return this;
    return AppThemeColors(
      accent: Color.lerp(accent, other.accent, t)!,
      cardBg: Color.lerp(cardBg, other.cardBg, t)!,
      chipActiveBg: Color.lerp(chipActiveBg, other.chipActiveBg, t)!,
      chipBg: Color.lerp(chipBg, other.chipBg, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      scaffoldBg: Color.lerp(scaffoldBg, other.scaffoldBg, t)!,
    );
  }
}

/// 4. Extension untuk Akses Singkat
extension AppThemeColorsExt on BuildContext {
  AppThemeColors get appColors =>
      Theme.of(this).extension<AppThemeColors>() ?? AppThemeColors.light;

  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  TextStyle? textStyleWithColor(TextStyle? baseStyle, Color color) {
    return baseStyle?.copyWith(color: color);
  }
}