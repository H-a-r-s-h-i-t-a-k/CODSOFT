import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:recipe_app/features/recipe_details/details.dart';
import 'package:recipe_app/features/recipe_details/model/recipes.dart';

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
                  Get.to(Detailed_dis(
                    selected_dish: filtered_list[index],
                  ));
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
