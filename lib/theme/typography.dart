import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTypography {
  static TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.baloo(fontSize: 96, height: balloHeight),
      headline2: GoogleFonts.baloo(fontSize: 60, height: balloHeight),
      headline3: GoogleFonts.baloo(fontSize: 48, height: balloHeight),
      headline4: GoogleFonts.baloo(fontSize: 34, height: balloHeight),
      headline5: GoogleFonts.baloo(fontSize: 24, height: balloHeight),
      headline6: GoogleFonts.baloo(fontSize: 20, height: balloHeight),
      subtitle1: GoogleFonts.baloo(fontSize: 16, height: balloHeight),
      subtitle2: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold),
      bodyText1: GoogleFonts.lato(fontSize: 17),
      bodyText2: GoogleFonts.lato(fontSize: 15),
      button: GoogleFonts.baloo(fontSize: 20),
      caption: GoogleFonts.lato(fontSize: 13),
      overline: GoogleFonts.lato(fontSize: 10));
  
  static const double balloHeight = 1;
}
