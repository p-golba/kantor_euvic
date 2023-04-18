import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.ibmPlexSansDevanagari().fontFamily,
      textTheme: const TextTheme(
        labelMedium: TextStyle(
          color: Color(0xffFEFAEE),
          fontWeight: FontWeight.w900,
          fontSize: 32,
          letterSpacing: 4,
        )
      )
    );
  }
}