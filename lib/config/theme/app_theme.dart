import 'package:flutter/material.dart';

const Color _myColor = Color(0xFF00A19D);
// ignore: unused_element
const List<Color> _myColors = [
  _myColor,
  Colors.white,
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
        primarySwatch: MaterialColor(_myColors[selectedColor].value, {
          50: _myColors[selectedColor],
          100: _myColors[selectedColor],
          200: _myColors[selectedColor],
          300: _myColors[selectedColor],
          400: _myColors[selectedColor],
          500: _myColors[selectedColor],
          600: _myColors[selectedColor],
          700: _myColors[selectedColor],
          800: _myColors[selectedColor],
          900: _myColors[selectedColor],
        }),
      ),
      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.grey[200],
      //   foregroundColor: Colors.black,
      //   titleTextStyle: const TextStyle(color: Colors.black),
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        displaySmall: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    );
  }
}
