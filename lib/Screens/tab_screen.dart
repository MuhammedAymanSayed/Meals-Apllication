import 'package:flutter/material.dart';
import 'package:max_meals_app_11_1_22/Screens/categories_screen.dart';
import 'package:max_meals_app_11_1_22/Widgets/global_drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [
    const CategoriesScreen(),
    Column(
      children: const [
        Center(
          child: Text('data'),
        )
      ],
    )
  ];
  int _pageIndex = 0;
  final PageController _ctrl = PageController();
  String _test = 'Meals';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_test),
      ),
      drawer: const GlobalDrawer(),
      body: PageView(
        controller: _ctrl,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
            if (index == 1) {
              _test = 'Categories';
            } else {
              _test = 'Meals';
            }
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _ctrl.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
            _pageIndex = index;
            if (index == 1) {
              _test = 'Categories';
            } else {
              _test = 'Meals';
            }
          });
        },
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: _pageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.star),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}

