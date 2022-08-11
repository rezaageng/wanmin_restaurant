import 'package:flutter/material.dart';

import '../data/food_dummy.dart';
import '../widgets/food_item.dart';

class CategoryFood extends StatelessWidget {
  static const String routeName = '/category-food';

  const CategoryFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final id = routeArgs['id'];
    final title = routeArgs['title'];

    final categoryFood =
        foodDummy.where((food) => food.categories.contains(id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return FoodItem(
            id: categoryFood[index].id,
            title: categoryFood[index].title,
            imageUrl: categoryFood[index].imgUrl,
            rarity: categoryFood[index].rarity,
          );
        },
        itemCount: categoryFood.length,
      ),
    );
  }
}
