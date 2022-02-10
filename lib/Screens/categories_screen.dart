import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/dummy_data.dart';
import 'package:max_meals_app_11_1_22/Widgets/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
        ),
        children: dummyCategories.map((e) {
          return CategoryWidget(
            title: e.title,
            catColor: e.color,
            id: e.id,
          );
        }).toList(),
      ),
    );
  }
}
