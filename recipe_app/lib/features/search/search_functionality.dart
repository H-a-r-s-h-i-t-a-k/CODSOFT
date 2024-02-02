import 'package:flutter/material.dart';
import 'package:recipe_app/features/front/first.dart';
import 'package:recipe_app/features/recipe_listings/list.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " Search for Recipes ",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        // SizedBox(
        //   height: 60,
        // ),
        TextField(
          // onChanged: (value) => FirstScreen.,
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
    );
  }
}
