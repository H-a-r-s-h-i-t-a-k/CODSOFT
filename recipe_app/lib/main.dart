import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:recipe_app/features/front/first.dart';

import 'features/recipe_listings/list.dart';
import 'theme/apptheme.dart';

final appname = 'Recipe App';
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
    return GetMaterialApp(
      title: appname,
      debugShowCheckedModeBanner: false,
      theme: Apptheme.lighttheme,
      darkTheme: Apptheme.darktheme,
      themeMode: ThemeMode.system,
      transitionDuration: const Duration(milliseconds: 500),

      home: FirstScreen(),
      // RecipeList(),
    );
  }
}
