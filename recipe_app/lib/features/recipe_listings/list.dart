import 'package:flutter/material.dart';
import 'package:recipe_app/features/recipe_details/model/recipes.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  static List<RecipeModel> main_recipe_list = [
    RecipeModel(
        "",
        "Butter Chicken",
        4,
        ["500g chicken", "1 cup yogurt", "2 tbsp butter", "1 cup tomato puree"],
        "Instructions: ..."),
    RecipeModel(
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
        "Aloo Gobi",
        4,
        ["2 potatoes", "1 cauliflower", "1 tsp turmeric", "1 tsp cumin powder"],
        "Instructions: ..."),
    // RecipeModel(
    //     "Chicken Curry",
    //     5,
    //     [
    //       "500g chicken",
    //       "1 cup coconut milk",
    //       "2 onions",
    //       "3 tomatoes",
    //       "1 tsp coriander powder"
    //     ],
    //     "Instructions,: ..."),
    // RecipeModel(
    //     "Rajma",
    //     4,
    //     [
    //       "1 cup kidney beans",
    //       "1 onion",
    //       "2 tomatoes",
    //       "1 tsp ginger-garlic paste"
    //     ],
    //     "Instructions: ..."),
    // RecipeModel(
    //     "Samosa",
    //     6,
    //     [
    //       "2 cups all-purpose flour",
    //       "2 potatoes",
    //       "1 cup green peas",
    //       "1 tsp garam masala",
    //       "1/2 tsp cumin seeds"
    //     ],
    //     "Instructions: ..."),
    // RecipeModel(
    //     "Dal Tadka",
    //     4,
    //     [
    //       "1 cup yellow lentils",
    //       "1 onion",
    //       "2 tomatoes",
    //       "1 tsp mustard seeds"
    //     ],
    //     "Instructions: ..."),
    // RecipeModel(
    //     "Fish Curry",
    //     5,
    //     [
    //       "500g fish",
    //       "1 cup tamarind pulp",
    //       "2 onions",
    //       "3 tomatoes",
    //       "1 tsp red chili powder"
    //     ],
    //     "Instructions: ..."),
    // RecipeModel(
    //     "Vada Pav",
    //     5,
    //     [
    //       "2 cups gram flour",
    //       "4 potatoes",
    //       "1 tsp mustard seeds",
    //       "4 pav buns"
    //     ],
    //     "Instructions: ..."),
    // RecipeModel(
    //     "Chicken Biryani",
    //     6,
    //     [
    //       "2 cups basmati rice",
    //       "500g chicken",
    //       "1 cup fried onions",
    //       "4 cloves",
    //       "2 cardamom pods"
    //     ],
    //     "Instructions: ..."),
    // RecipeModel(
    //     "Mutton Rogan Josh",
    //     6,
    //     [
    //       "500g mutton",
    //       "1 cup yogurt",
    //       "2 onions",
    //       "3 tomatoes",
    //       "1 tsp fennel powder"
    //     ],
    //     "Instructions: ..."),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
