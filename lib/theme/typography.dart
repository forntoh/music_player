import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTypography {
  static TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.roboto(fontSize: 96, fontWeight: FontWeight.bold),
      headline2: GoogleFonts.roboto(fontSize: 60, fontWeight: FontWeight.bold),
      headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.bold),
      headline4: GoogleFonts.roboto(fontSize: 34, fontWeight: FontWeight.bold),
      headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
      headline6: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
      subtitle1: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
      subtitle2: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.bold),
      bodyText1: GoogleFonts.roboto(fontSize: 17),
      bodyText2: GoogleFonts.roboto(fontSize: 15),
      button: GoogleFonts.roboto(fontSize: 20),
      caption: GoogleFonts.roboto(fontSize: 13),
      overline: GoogleFonts.roboto(fontSize: 10));
  
  static const double balloHeight = 1;
}
