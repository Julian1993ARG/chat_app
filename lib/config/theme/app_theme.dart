import 'package:flutter/material.dart';

class AppTheme {

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        primary: Color.fromARGB(255, 91, 23, 185),
        secondary: Color.fromARGB(255, 34, 162, 79),
        surface: Color(0xFFFFFFFF),
        background: Color(0xFFFFFFFF),
        error: Color(0xFFB00020),
        onPrimary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFF000000),
        onSurface: Color(0xFF000000),
        onBackground: Color(0xFF000000),
        onError: Color(0xFFFFFFFF),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        displaySmall: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }
}
