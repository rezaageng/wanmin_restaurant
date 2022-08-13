import 'package:flutter/material.dart';

import '../models/food_models.dart';
import '../screens/food_detail.dart';

class FoodItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Rarity rarity;
  final Function hideFood;

  const FoodItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rarity,
    required this.hideFood,
  }) : super(key: key);

  Map<String, Object> get rarityMap {
    switch (rarity) {
      case Rarity.oneStar:
        return {
          'rarity': '1 Star',
          'color': Colors.grey,
        };
      case Rarity.twoStars:
        return {
          'rarity': '2 Stars',
          'color': Colors.teal,
        };
      case Rarity.threeStars:
        return {
          'rarity': '3 Stars',
          'color': Colors.blue,
        };
      case Rarity.fourStars:
        return {
          'rarity': '4 Stars',
          'color': Colors.purple,
        };
      case Rarity.fiveStars:
        return {
          'rarity': '5 Stars',
          'color': Colors.amber,
        };
    }
  }

  void _selectFood(BuildContext context) async {
    Future result = Navigator.of(context).pushNamed(
      FoodDetail.routeName,
      arguments: id,
    );

    final String? food = await result;
    if (food != null) {
      hideFood(food);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: InkWell(
        onTap: () => _selectFood(context),
        enableFeedback: false,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      (rarityMap['color'] as Color).withOpacity(0.7),
                      rarityMap['color'] as Color,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Image.network(
                  imageUrl,
                  height: 256,
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headline6),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        rarityMap['rarity'] as String,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
