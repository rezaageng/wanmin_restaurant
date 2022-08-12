import 'package:flutter/material.dart';

import 'left_drawer.dart';
import '../screens/categories.dart';
import '../screens/favorite_screen.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  final List<Map<String, Object>> _screens = [
    {
      'title': 'Wanmin Restaurant',
      'screen': const CategoriesScreen(),
    },
    {
      'title': 'Favorite',
      'screen': const FavoriteScreen(),
    },
  ];

  int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_screenIndex]['title'] as String),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
            enableFeedback: false,
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: _screens[_screenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: (index) => setState(() => _screenIndex = index),
        enableFeedback: false,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme:
            Theme.of(context).iconTheme.copyWith(color: Colors.teal),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Dish Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
