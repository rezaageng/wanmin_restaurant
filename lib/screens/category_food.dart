import 'package:flutter/material.dart';

class CategoryFood extends StatelessWidget {
  static const String routeName = '/category-food';

  const CategoryFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: const Center(
        child: Text('Paimon is an emergency food'),
      ),
    );
  }
}
