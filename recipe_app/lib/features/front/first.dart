import 'package:flutter/material.dart';
import 'package:recipe_app/main.dart';

import '../recipe_details/model/recipes.dart';
import '../recipe_listings/list.dart';

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
        "To make delicious butter chicken, start by marinating boneless chicken pieces in a mixture of yogurt, ginger-garlic paste, and a blend of spices like garam masala, cumin, and coriander. Allow the chicken to marinate for at least 2 hours. In a pan, heat oil and sauté finely chopped onions until golden brown. Add tomato puree and cook until the oil separates. Introduce the marinated chicken to the pan and cook until it's tender. In a separate pan, prepare the buttery tomato sauce by combining butter, cream, and fenugreek leaves. Mix this sauce with the cooked chicken, allowing it to simmer for a few minutes. Garnish with fresh coriander and serve hot with naan or rice for a delightful butter chicken experience!"),
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
        "To make delicious paneer tikka, start by preparing the marinade. In a bowl, mix 1 cup of thick yogurt with 2 tablespoons of gram flour, 1 tablespoon of red chili powder, 1 teaspoon of turmeric, and salt to taste. Add 1 tablespoon of ginger-garlic paste for flavor. Cut 250g of paneer into cubes and coat them thoroughly in the marinade. Let it marinate for at least 2 hours.Preheat your oven to 200°C (392°F). Skewer the marinated paneer cubes and place them on a baking tray. Brush the paneer with oil for a golden finish. Bake for 20-25 minutes or until the edges are charred.Serve the paneer tikka hot with mint chutney and lemon wedges. Enjoy the perfect blend of spices and smoky flavors in every bite!"),
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
        "To make a delicious biryani, start by marinating your choice of meat—whether it's chicken, lamb, or beef—with a mixture of yogurt, ginger-garlic paste, and a blend of biryani spices. Let it marinate for at least an hour to enhance the flavors. In a large pot, heat ghee and sauté thinly sliced onions until golden brown and caramelized. Add the marinated meat and cook until it's browned and fragrant. Layer partially cooked basmati rice over the meat, and sprinkle saffron-infused water for a rich color and aroma. Seal the pot tightly and let it cook on low heat, allowing the rice to absorb the flavorful steam. Once done, gently fluff the biryani with a fork, ensuring each grain of rice is separate and aromatic. Serve hot, garnished with fresh coriander and mint leaves. Enjoy the delightful explosion of spices and fragrances in every bite!"),
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
        "To make delicious masala dosa, start by soaking 1 cup of rice and 1/2 cup of urad dal separately for about 6 hours. Grind them into a smooth batter, mix them together, and let the batter ferment overnight. For the potato filling, sauté mustard seeds, curry leaves, chopped onions, and green chilies in oil. Add boiled and mashed potatoes, along with turmeric and salt. Cook until the flavors meld. Heat a dosa pan, pour a ladle of batter, and spread it thinly. Add a spoonful of the potato filling, fold the dosa, and serve hot with coconut chutney and sambar. Enjoy the perfect blend of crispy dosa and flavorful masala!"),
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
        "Palak Paneer is a delicious Indian dish that combines tender spinach (palak) with chunks of paneer (Indian cottage cheese). To make it, start by blanching fresh spinach and pureeing it into a smooth paste. In a pan, sauté finely chopped onions and tomatoes until golden brown, then add ginger-garlic paste and cook until fragrant. Next, stir in the spinach puree and let it simmer, allowing the flavors to meld. Add spices like cumin, coriander, garam masala, and a pinch of turmeric for that authentic taste. Finally, gently fold in bite-sized cubes of paneer and let them absorb the vibrant flavors. Garnish with a dollop of cream and serve this wholesome Palak Paneer with warm naan or steamed rice for a satisfying and nutritious meal."),
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
        "Making delicious chole bhature is a delightful culinary adventure. Begin by soaking chickpeas overnight and then cooking them to perfection with a medley of spices like cumin, coriander, and garam masala. Meanwhile, prepare a luscious tomato-onion gravy that will envelop the chickpeas in a symphony of flavors. For the bhature, knead a soft dough using flour, yogurt, and a pinch of baking soda. Allow it to rest, then roll out small, fluffy rounds that will puff up gloriously when fried. The final step involves pairing these fluffy bhature with the aromatic chole, creating a dish that not only tantalizes the taste buds but also captures the essence of Indian cuisine in every bite. Enjoy the hearty, soul-satisfying experience of chole bhature!"),
    RecipeModel(
        "assets/7_Aloogobi.jpg",
        "Aloo Gobi",
        4,
        ["2 potatoes", "1 cauliflower", "1 tsp turmeric", "1 tsp cumin powder"],
        "To make delicious aloo gobi, start by heating oil in a pan and sautéing cumin seeds until they sizzle. Add chopped onions and cook until golden brown. Stir in ginger-garlic paste and sauté until the raw aroma fades. Introduce diced potatoes and cauliflower florets to the mix, coating them with the flavorful spices. Sprinkle turmeric, coriander, cumin, and chili powder, letting the veggies absorb the rich flavors. Cook covered until the potatoes and cauliflower are tender, occasionally stirring to prevent sticking. Garnish with fresh cilantro and a squeeze of lemon for a zesty kick. This simple yet satisfying aloo gobi is ready to be savored, showcasing the perfect blend of spices and textures."),
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
