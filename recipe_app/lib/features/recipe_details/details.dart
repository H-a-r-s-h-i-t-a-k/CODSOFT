import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:recipe_app/customAnimation/UpwardAnimationWidget.dart';
import 'package:recipe_app/features/recipe_details/model/recipes.dart';

import '../../customAnimation/UpwardAnimationcontroller.dart';
import '../../customAnimation/UpwardAnimationmodel.dart';

class Detailed_dis extends StatefulWidget {
  Detailed_dis({super.key, required this.selected_dish});
  final RecipeModel selected_dish;

  @override
  State<Detailed_dis> createState() => _Detailed_disState();
}

class _Detailed_disState extends State<Detailed_dis> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpwardAnimationController());

    controller.startAnimate();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          UpwardAnimation(
            durationInMls: 1300,
            animPosition: CAnimatedposition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            child: Image(
              colorBlendMode: BlendMode.clear,
              height: 100,
              width: 700,
              image: AssetImage(widget.selected_dish.img!),
              fit: BoxFit.cover,
            ),
          ),
          UpwardAnimation(
              durationInMls: 1300,
              animPosition: CAnimatedposition(
                  bottomAfter: 0,
                  bottomBefore: -100,
                  leftAfter: 0,
                  leftBefore: 0,
                  rightAfter: 0,
                  rightBefore: 0,
                  topAfter: 0,
                  topBefore: 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(70),
                ),
              )),
          UpwardAnimation(
            durationInMls: 1300,
            animPosition: CAnimatedposition(
                bottomAfter: 0,
                bottomBefore: -400,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.selected_dish.recipe_name!,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          widget.selected_dish.recipe_ingredients.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Image(
                            image: AssetImage(widget.selected_dish.img!),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "If you have missed a dose, take it as soon as you remember it and finish the full course of treatment even if you feel better. It is important that this medication is not stopped suddenly without talking to the doctor as it may increase seizure frequency drive or do anything that requires mental focus until you know how this medicine affects you.",
                          textAlign: TextAlign.justify,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
