import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/filter.dart';
import 'package:max_meals_app_11_1_22/Widgets/filter_widget.dart';
import 'package:max_meals_app_11_1_22/Widgets/global_drawer.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);
  final List<Filter> _filters = [
    Filter(
      title: 'Gluten-free',
      subtitle: 'Only include gluten-free meals.',
      boolValue: true,
    ),
    Filter(
      title: 'Lactose-free',
      subtitle: 'Only include lactose-free meals.',
      boolValue: true,
    ),
    Filter(
      title: 'Vegetarian',
      subtitle: 'Only include vegetarian meals.',
      boolValue: true,
    ),
    Filter(
      title: 'Vegan',
      subtitle: 'Only include vegan meals.',
      boolValue: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var appbar = AppBar(
      title: const Text('Filters'),
    );
    return Scaffold(
      appBar: appbar,
      drawer: const GlobalDrawer(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: const Center(
              child: Text(
                'Adjust your meal section',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          FilterWidget(
            filters: _filters,
          ),
        ],
      ),
    );
  }
}
