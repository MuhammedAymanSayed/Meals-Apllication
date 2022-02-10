import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Screens/category_meal_screen.dart';

class CategoryWidget extends StatelessWidget {
  final Color catColor;
  final String title;
  final String id;
  const CategoryWidget(
      {required this.id, required this.title, required this.catColor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return MealScreen(
            categoryTitle: title,
            id: id,
            appBarColor: catColor,
          );
        }));
      },
      splashColor: catColor,
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              catColor.withOpacity(.5),
              catColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Align(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}
