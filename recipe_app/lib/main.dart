import 'package:flutter/material.dart';
import 'package:recipe_app/features/front/first.dart';

import 'theme/apptheme.dart';

final ColorScheme lColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.cyan, brightness: Brightness.light);
final ColorScheme dColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.blueGrey, brightness: Brightness.dark);
void main() {
  runApp(const Recipe_App());
}

class Recipe_App extends StatelessWidget {
  const Recipe_App({super.key});

  // This widget is the root of Recipe_App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: Apptheme.lighttheme,
      darkTheme: Apptheme.darktheme,
      themeMode: ThemeMode.system,
      home: const FirstScreen(),
    );
  }
}
