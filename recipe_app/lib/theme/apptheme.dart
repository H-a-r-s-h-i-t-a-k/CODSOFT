import 'package:flutter/material.dart';

import '../main.dart';

class Apptheme {
  Apptheme._();
  static ThemeData darktheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    colorScheme: dColorScheme,
    cardTheme: CardTheme().copyWith(
      color: dColorScheme.primary.withOpacity(0.5),
      surfaceTintColor: dColorScheme.onPrimary.withOpacity(0.9),
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
    ),
    appBarTheme: AppBarTheme().copyWith(
      elevation: 5,
      backgroundColor: dColorScheme.primary.withOpacity(0.7),
      foregroundColor: dColorScheme.primaryContainer.withOpacity(0.9),
    ),
  );
  static ThemeData lighttheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
    colorScheme: lColorScheme,
    appBarTheme: AppBarTheme().copyWith(
      elevation: 5,
      backgroundColor: lColorScheme.primary.withOpacity(0.8),
      foregroundColor: lColorScheme.primaryContainer,
    ),
    cardTheme: CardTheme().copyWith(
      color: lColorScheme.surface,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.black,
    ),
  );
}
