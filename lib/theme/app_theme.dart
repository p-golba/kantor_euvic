import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kantor_euvic/theme/app_colors.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.ibmPlexSansDevanagari().fontFamily,
      textTheme: TextTheme(
        labelMedium: TextStyle(
          color: AppColors.yellow,
          fontWeight: FontWeight.w900,
          fontSize: 32,
          letterSpacing: 4,
        ),
        headlineLarge: const TextStyle(
          color: Colors.black,
          fontSize: 36,
          letterSpacing: 5,
          fontWeight: FontWeight.w900,
        ),
        bodySmall: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        )
      )
    );
  }
}