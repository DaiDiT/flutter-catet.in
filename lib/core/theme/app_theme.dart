import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.teal,
      secondary: Colors.orangeAccent,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.tealAccent,
      secondary: Colors.deepOrangeAccent,
    ),
    scaffoldBackgroundColor: const Color(0xFF101010),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF101010),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}
