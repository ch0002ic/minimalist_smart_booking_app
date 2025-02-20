import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.grey.shade50,
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    ),
  );

  static BoxDecoration get neumorphicDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Colors.grey.shade50,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        blurRadius: 20,
        offset: const Offset(10, 10)),
      BoxShadow(
        color: Colors.white,
        blurRadius: 15,
        offset: const Offset(-10, -10)),
    ],
  );
}