import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF4211D4);
  static const Color backgroundDark = Color(0xFF0A0714);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundDark,
    fontFamily: 'SpaceGrotesk',
    colorScheme: const ColorScheme.dark(
      primary: primary,
    ),
  );
}