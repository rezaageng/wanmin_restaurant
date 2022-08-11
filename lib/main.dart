import 'package:flutter/material.dart';

import 'screens/categories.dart';
import 'screens/category_food.dart';
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
        '/': (context) => const CategoriesScreen(),
        CategoryFood.routeName: (context) => const CategoryFood(),
      },
    );
  }
}
