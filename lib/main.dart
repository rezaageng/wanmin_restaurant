import 'package:flutter/material.dart';
import 'package:wanmin_restaurant/navigations/top_tab.dart';

import 'screens/categories.dart';
import 'screens/category_food.dart';
import 'screens/food_detail.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wanmin Restaurant',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routes: {
        '/': (context) => const TopTab(),
        CategoryFood.routeName: (context) => const CategoryFood(),
        FoodDetail.routeName: (context) => const FoodDetail(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const CategoriesScreen(),
      ),
    );
  }
}
