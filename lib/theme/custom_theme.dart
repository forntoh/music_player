import 'package:flutter/material.dart';
import 'package:music_player/theme/widgets.dart';

import 'colors.dart';
import 'typography.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: CustomColors.blue_black,
      accentColor: CustomColors.violet,
      scaffoldBackgroundColor: CustomColors.blue_black,
      textTheme: CustomTypography.textTheme,
      buttonTheme: CustomWidgets.buttonThemeDark,
      inputDecorationTheme: CustomWidgets.inputDecorationTheme,
      cardTheme: CustomWidgets.cardTheme,
      floatingActionButtonTheme: CustomWidgets.fabTheme,
      colorScheme: ColorScheme.dark(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
