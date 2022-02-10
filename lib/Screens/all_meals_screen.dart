import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/dummy_data.dart';
import 'package:max_meals_app_11_1_22/Widgets/global_drawer.dart';
import 'package:max_meals_app_11_1_22/Widgets/meal_widget.dart';

class AllMeals extends StatelessWidget {
  const AllMeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('All Meals'),
        ),
        drawer: const GlobalDrawer(),
        body: ListView.builder(
          itemCount: dummyMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem.uni(meal: dummyMeals, index: index);
          },
        ),
      ),
    );
  }
}
