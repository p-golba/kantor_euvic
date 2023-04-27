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
        headlineLarge: TextStyle(
          color: AppColors.blue,
          fontSize: 44,
          fontWeight: FontWeight.w900,
        )
      )
    );
  }
}