import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/meals.dart';
import 'package:max_meals_app_11_1_22/Screens/meal_screen.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    Key? key,
    required this.meal,
    required this.index,
    required this.appBarColor,
  }) : super(key: key);
  const MealItem.uni({
    Key? key,
    required this.meal,
    required this.index,
    this.appBarColor=Colors.blue
  }) : super(key: key);

  final List<Meal> meal;
  final int index;
  final Color appBarColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (builder) {
              return MealScreen(
                meal: meal[index],
                appBarColor: appBarColor,
              );
            },
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(meal[index].imageUrl),
                ),
                Positioned(
                  right: 5,
                  bottom: 10,
                  child: Container(
                    color: Colors.black26,
                    padding: const EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    child: Text(
                      meal[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${meal[index].duration.toString()} min',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.local_mall_outlined,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        meal[index].complexity.toString().substring(11),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      Text(
                        meal[index].affordability.toString().substring(14),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
