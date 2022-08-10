import 'package:flutter/material.dart';

class CategoryFood extends StatelessWidget {
  const CategoryFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
      ),
      body: const Center(
        child: Text('Paimon is emergency food'),
      ),
    );
  }
}
