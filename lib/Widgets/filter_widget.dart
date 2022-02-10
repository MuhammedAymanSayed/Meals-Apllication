import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Models/filter.dart';

class FilterWidget extends StatefulWidget {
  final List<Filter> filters;
  const FilterWidget({
    Key? key,
    required this.filters,
  }) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.filters.map((e) {
          return ListTile(
            title: Text(e.title),
            subtitle: Text(e.subtitle),
            trailing: Switch(
                value: e.boolValue,
                onChanged: (z) {
                  setState(() {
                    e.boolValue = z;
                  });
                }),
          );
        }).toList(),
      ],
    );
  }
}

