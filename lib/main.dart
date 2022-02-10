import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Screens/tab_screen.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 5.0,
          left: 5.0,
          right: 5.0,
        ),
        child: TabScreen(),
      ),
    );
  }
}
