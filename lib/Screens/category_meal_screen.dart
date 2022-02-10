import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/dummy_data.dart';
import 'package:max_meals_app_11_1_22/Models/meals.dart';
import 'package:max_meals_app_11_1_22/Widgets/meal_widget.dart';

class MealScreen extends StatelessWidget {
  final String categoryTitle;
  final String id;
  final Color appBarColor;
  const MealScreen({required this.categoryTitle, Key? key, required this.id, required this.appBarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<Meal> meal = dummyMeals.where((element) {
      return element.categories.contains(id);
    }).toList();
    meal=meal.where((element)=> element.isVegetarian).toList();
    meal=meal.where((element)=> element.isVegan).toList();
    meal=meal.where((element)=> element.isLactoseFree).toList();
    meal=meal.where((element)=> element.isGlutenFree).toList();
    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text(categoryTitle),
        ),
        
        body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: meal.length,
              itemBuilder: (ctx, index) {
                return MealItem(meal: meal,index: index,appBarColor: appBarColor);
              }),
        ),
      ),
    );
  }
}

