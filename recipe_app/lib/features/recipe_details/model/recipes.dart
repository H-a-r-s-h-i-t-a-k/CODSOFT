class RecipeModel {
  String? img, recipe_name, recipe_instructions;
  List<String>? recipe_ingredients;
  double? rating;

  RecipeModel(this.img, this.recipe_name, this.rating, this.recipe_ingredients,
      this.recipe_instructions);
}
