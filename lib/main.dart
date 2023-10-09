import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorTheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorTheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 15),
);

void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkColorTheme,
      cardTheme: const CardTheme().copyWith(
        color: kDarkColorTheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorTheme.primaryContainer,
          foregroundColor: kDarkColorTheme.onPrimaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorTheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorTheme.onPrimaryContainer,
        foregroundColor: kColorTheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kColorTheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorTheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorTheme.onSecondaryContainer,
              fontSize: 17,
            ),
          ),
    ),
    home: const Expenses(),
    themeMode: ThemeMode.dark, // this should be ThemeMode.system
  ));
}
