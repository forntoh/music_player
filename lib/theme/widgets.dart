import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CustomWidgets {
  static BorderRadius allRounded = BorderRadius.circular(14.0);
  static BorderRadius allRoundedSmall = BorderRadius.circular(12.0);
  static ButtonThemeData buttonThemeBase = ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: allRounded),
      buttonColor: CustomColors.violet,
      textTheme: ButtonTextTheme.primary,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12));

  static ButtonThemeData buttonThemeDark = buttonThemeBase.copyWith(
    buttonColor: CustomColors.violet,
  );

  static ButtonThemeData buttonThemeLight = buttonThemeBase.copyWith(
    buttonColor: CustomColors.violet,
  );

  static CardTheme cardTheme =
      CardTheme(shape: RoundedRectangleBorder(borderRadius: allRounded));

  static FloatingActionButtonThemeData fabTheme = FloatingActionButtonThemeData(
    backgroundColor: CustomColors.violet,
    foregroundColor: Colors.white,
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    labelStyle: GoogleFonts.lato(fontWeight: FontWeight.w800),
    border: OutlineInputBorder(borderRadius: allRounded),
  );

  static SliderThemeData sliderTheme =
      SliderThemeData(
        activeTrackColor: CustomColors.violet,
        thumbColor: CustomColors.violet,
        inactiveTrackColor: CustomColors.controls,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
        trackShape: RoundedRectSliderTrackShape(),
        overlayColor: CustomColors.violet.withAlpha(60)
      );
}
