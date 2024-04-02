import 'package:flutter/material.dart';

const Color _myColor = Color(0xFF00A19D);
// ignore: unused_element
const List<Color> _myColors = [
  _myColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.orange
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor
  }) : assert(selectedColor >= 0 && selectedColor < _myColors.length, 'Invalid color index');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(_myColor.value, const {
          50: _myColor,
          100: _myColor,
          200: _myColor,
          300: _myColor,
          400: _myColor,
          500: _myColor,
          600: _myColor,
          700: _myColor,
          800: _myColor,
          900: _myColor,
        }),
      ),
      // appBarTheme: const AppBarTheme(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.black,
      //   titleTextStyle: TextStyle(color: Colors.black),
      //   iconTheme: IconThemeData(color: Colors.black),
      // ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        displaySmall: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }
}
