import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Screens/all_meals_screen.dart';
import 'package:max_meals_app_11_1_22/Screens/settings_screen.dart';
import 'package:max_meals_app_11_1_22/main.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.yellow,
            child: const Center(
              child: Text(
                'Cooking Up',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (builder) => const MyApp(),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.restaurant),
            title: const Text(
              'Meals',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (builder) => const AllMeals(),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Filters',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (builder) => Settings(),
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
