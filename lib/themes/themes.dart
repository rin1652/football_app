import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = const ColorScheme.light().copyWith(
  primary: Color(
    int.parse('0xff1CAD79'),
  ),
  onBackground: Colors.white,
);
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: kColorScheme,
  cardTheme: const CardTheme().copyWith(
    color: kColorScheme.onBackground,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        bodyLarge: GoogleFonts.inter(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: kColorScheme.primary,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: kColorScheme.onSecondary,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: kColorScheme.onSecondary,
        ),
        labelSmall: GoogleFonts.inter(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: kColorScheme.onSecondary,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: kColorScheme.onSecondary,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: kColorScheme.onSecondary,
        ),
      ),
);
