import 'package:flutter/material.dart';
import 'package:recipe_app/features/recipe_details/model/recipes.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  static List<RecipeModel> all_recipe_list = [
    RecipeModel(
        "assets/1_Butter.jpg",
        "Butter Chicken",
        4,
        ["500g chicken", "1 cup yogurt", "2 tbsp butter", "1 cup tomato puree"],
        "Instructions: ..."),
    RecipeModel(
        "assets/2_paneer.jpg",
        "Paneer Tikka",
        5,
        [
          "200g paneer cubes",
          "1 cup yogurt",
          "2 tsp red chili powder",
          "1 lemon, juiced"
        ],
        "Instructions: ..."),
    RecipeModel(
        "assets/3_briyani.jpg",
        "Biryani",
        6,
        [
          "2 cups basmati rice",
          "500g chicken/mutton",
          "1 cup fried onions",
          "4 cloves",
          "2 cardamom pods"
        ],
        "Instructions: ..."),
    RecipeModel(
        "assets/4_masala_dosa.jpg",
        "Masala Dosa",
        5,
        [
          "1 cup rice",
          "1/2 cup urad dal",
          "1/4 cup chana dal",
          "4 potatoes",
          "1 tsp mustard seeds"
        ],
        "Instructions: ..."),
    RecipeModel(
        "assets/5_palak_paneer.jpg",
        "Palak Paneer",
        5,
        [
          "200g paneer",
          "4 cups chopped spinach",
          "1 onion",
          "2 tomatoes",
          "1 tsp garam masala"
        ],
        "Instructions: ..."),
    RecipeModel(
        "assets/6_chole_bhature.jpg",
        "Chole Bhature",
        5,
        [
          "1 cup chickpeas",
          "2 cups all-purpose flour",
          "1 onion",
          "2 tomatoes",
          "1 tsp cumin seeds"
        ],
        "Instructions: ..."),
    RecipeModel(
        "assets/7_Aloogobi.jpg",
        "Aloo Gobi",
        4,
        ["2 potatoes", "1 cauliflower", "1 tsp turmeric", "1 tsp cumin powder"],
        "Instructions: ..."),
  ];

  List<RecipeModel> filtered_list = List.from(all_recipe_list);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filtered_list.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(
          filtered_list[index].recipe_name!,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filtered_list[index].recipe_ingredients!.length,
          itemBuilder: (BuildContext cxt, i) {
            Text(
              filtered_list[index].recipe_ingredients![i],
            );
          },
        ),
      ),
    );
  }
}
