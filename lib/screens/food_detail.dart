import 'package:flutter/material.dart';

import '../data/food_dummy.dart';

class FoodDetail extends StatelessWidget {
  static const routeName = '/food-detail';

  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as String;
    final dish = foodDummy.firstWhere((food) => food.id == routeArgs);

    return Scaffold(
      appBar: AppBar(
        title: Text(dish.title),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.network(
              dish.imgUrl,
              width: double.infinity,
              height: 226,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Text(
                    dish.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    dish.effect,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  ...dish.ingredients
                      .map((ingredient) => Text('• $ingredient'))
                      .toList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
