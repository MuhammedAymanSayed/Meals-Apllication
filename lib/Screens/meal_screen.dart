// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/meals.dart';

class MealScreen extends StatelessWidget {
  final Meal meal;
  final Color appBarColor;
  const MealScreen({Key? key, required this.meal, required this.appBarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
          backgroundColor: appBarColor,
        ),
        body: ListView(
          children: [
            Image.network(meal.imageUrl),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ingredients :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: appBarColor,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: appBarColor.withOpacity(.25),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: meal.ingredients.map((e) {
                    return Flexible(
                      child: Card(
                        color: appBarColor.withOpacity(.5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(
                            e,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Steps :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: appBarColor,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: meal.steps.map((e) {
                  return Text(
                    '- ${e}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
