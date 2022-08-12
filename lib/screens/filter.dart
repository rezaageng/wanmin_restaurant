import 'package:flutter/material.dart';

import '../navigations/left_drawer.dart';

class Filter extends StatelessWidget {
  static const routeName = '/filter';

  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
            enableFeedback: false,
          ),
        ),
      ),
      drawer: const LeftDrawer(),
      body: const Center(
        child: Text('You are my favorite'),
      ),
    );
  }
}
