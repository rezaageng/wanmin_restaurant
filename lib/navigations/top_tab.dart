import 'package:flutter/material.dart';

import '../screens/categories.dart';
import '../screens/favorite_screen.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wanmin Restaurant'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.restaurant),
                text: 'Dish Categories',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
