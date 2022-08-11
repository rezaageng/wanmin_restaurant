import 'package:flutter/material.dart';
import '../screens/category_food.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String image;

  const CategoryItem({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        CategoryFood.routeName,
        arguments: {
          'id': id,
          'title': title,
        },
      ),
      splashColor: color,
      borderRadius: BorderRadius.circular(16),
      enableFeedback: false,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          image: DecorationImage(
            image: AssetImage(image),
            opacity: 0.2,
            alignment: Alignment.bottomRight,
            scale: 1.8,
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
