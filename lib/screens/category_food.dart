import 'package:flutter/material.dart';

import '../data/food_dummy.dart';
import '../models/food_models.dart';
import '../widgets/food_item.dart';

class CategoryFood extends StatefulWidget {
  static const String routeName = '/category-food';

  const CategoryFood({Key? key}) : super(key: key);

  @override
  State<CategoryFood> createState() => _CategoryFoodState();
}

class _CategoryFoodState extends State<CategoryFood> {
  late List<FoodModel> categoryFood;
  late String title;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    title = routeArgs['title'] ?? 'Food';
    categoryFood =
        foodDummy.where((food) => food.categories.contains(id)).toList();
  }

  void _hideFood(String id) =>
      setState(() => categoryFood.removeWhere((food) => food.id == id));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          enableFeedback: false,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(title),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return FoodItem(
            id: categoryFood[index].id,
            title: categoryFood[index].title,
            imageUrl: categoryFood[index].imgUrl,
            rarity: categoryFood[index].rarity,
            hideFood: _hideFood,
          );
        },
        itemCount: categoryFood.length,
      ),
    );
  }
}
