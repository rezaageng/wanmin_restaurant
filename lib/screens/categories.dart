import 'package:flutter/material.dart';
import 'package:wanmin_restaurant/data/categories_dummy.dart';
import 'package:wanmin_restaurant/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wanmin Restaurant'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: dummyCategories
            .map(
              (category) =>
                  CategoryItem(title: category.name, color: category.color),
            )
            .toList(),
      ),
    );
  }
}
