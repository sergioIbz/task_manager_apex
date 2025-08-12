import 'package:flutter/material.dart';

class CustomTheme {
  static const primary = Color(0xFF7C4DFF);
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      colorSchemeSeed: primary,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
      ),
    );
  }
}
