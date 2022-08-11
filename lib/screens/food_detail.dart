import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  static const routeName = '/food-detail';

  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Detail $routeArgs'),
      ),
      body: const Center(
        child: Text('Paimon is an emergency food'),
      ),
    );
  }
}
