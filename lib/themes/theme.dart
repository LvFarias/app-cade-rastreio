import 'package:flutter/material.dart';

ThemeData myTheme() {
  return ThemeData(
    colorScheme: const ColorScheme(
      primary: Color(0XFF8A05BE),
      secondary: Color(0XFF0ABAB5),
      background: Color(0XFFECFEFD),
      error: Color(0XFF6E1610),
      surface: Color(0XFF0ABAB5),
      brightness: Brightness.light,
      onPrimary: Color(0XFF0E0114),
      onSecondary: Color(0XFF0E0114),
      onBackground: Color(0XFF0E0114),
      onError: Color(0XFF0E0114),
      onSurface: Color(0XFF0E0114),
      primaryVariant: Color(0XFF8A05BE),
      secondaryVariant: Color(0XFF0ABAB5),
    ),
  );
}

ThemeData myThemeDark() {
  return ThemeData(
    colorScheme: const ColorScheme(
      primary: Color(0XFF0ABAB5),
      secondary: Color(0XFF8A05BE),
      background: Color(0XFF0E0114),
      error: Color(0XFF6E1610),
      surface: Color(0XFF8A05BE),
      brightness: Brightness.dark,
      onPrimary: Color(0XFFECFEFD),
      onSecondary: Color(0XFFECFEFD),
      onBackground: Color(0XFFECFEFD),
      onError: Color(0XFFECFEFD),
      onSurface: Color(0XFFECFEFD),
      primaryVariant: Color(0XFF0ABAB5),
      secondaryVariant: Color(0XFF8A05BE),
    ),
  );
}
