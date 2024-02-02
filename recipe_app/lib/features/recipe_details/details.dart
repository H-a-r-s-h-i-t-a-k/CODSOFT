import 'package:flutter/material.dart';
import 'package:recipe_app/features/recipe_details/model/recipes.dart';

class Detailed_dis extends StatelessWidget {
  const Detailed_dis({super.key, required this.selected_dish});
  final RecipeModel selected_dish;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selected_dish.recipe_name!,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Text(
            '${selected_dish.rating!}',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.white.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }
}
