import 'package:flutter/material.dart';

import '../data/categories_dummy.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 240,
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      children: dummyCategories
          .map(
            (category) => CategoryItem(
              id: category.id,
              title: category.name,
              color: category.color,
              image: category.image,
            ),
          )
          .toList(),
    );
  }
}
