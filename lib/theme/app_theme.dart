import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.purple;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 5,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      )  
    );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 5,
      ),
      scaffoldBackgroundColor: Colors.black26);
}
