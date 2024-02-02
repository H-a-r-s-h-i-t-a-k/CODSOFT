import 'package:flutter/material.dart';
import 'package:recipe_app/main.dart';

import '../recipe_details/model/recipes.dart';
import '../search/search_functionality.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({
    super.key,
  });

  static var value_recipe;

  static fill_value(value) {
    value_recipe = value;
  }

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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

  void updateList(String value) {
    setState(() {
      filtered_list = all_recipe_list
          .where((element) =>
              element.recipe_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(appname),
          elevation: 0.0,
          backgroundColor: Colors.black26.withOpacity(0.0),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black26,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 34),
          child: Column(
            children: [
              // Search(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Search for Recipes ",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  TextField(
                    onChanged: (value) => updateList(value),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.search),
                      ),
                      hintText: "eg. momos,pasta,....",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isDarkMode
                              ? Color.fromARGB(172, 9, 230, 238)
                              : Color.fromARGB(130, 4, 4, 4),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(19),
                          bottomRight: Radius.circular(19),
                        ),
                        gapPadding: 3.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RecipesList(filtered_list: filtered_list),
            ],
          ),
        ),
      ),
    );
  }
}

//
//
//
////recipe list

class RecipesList extends StatelessWidget {
  const RecipesList({
    super.key,
    required this.filtered_list,
  });

  final List<RecipeModel> filtered_list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: filtered_list.length == 0
          ? Center(
              child: Text("Ooops! not available"),
            )
          : ListView.builder(
              itemCount: filtered_list.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  // Get.to(() => ProductScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 9.5,
                        child: Image.asset(
                          filtered_list[index].img!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 60,
                          left: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black.withAlpha(50),
                            ),
                          )),
                      Positioned(
                          top: 60,
                          left: 5,
                          // bottom: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.14,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: Expanded(
                                  flex: 3,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment:
                                    // CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        filtered_list[index].recipe_name!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        '${filtered_list[index].rating!}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: Colors.white
                                                    .withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
