import 'package:flutter/material.dart';

import '../navigations/left_drawer.dart';

class Filter extends StatefulWidget {
  static const routeName = '/filter';

  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _special = false;
  bool _exclusive = false;

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
        body: ListView(
          children: [
            SwitchListTile.adaptive(
              enableFeedback: false,
              value: _special,
              onChanged: (value) => setState(() {
                _special = value;
              }),
              title: const Text('Special Dish'),
            ),
            SwitchListTile.adaptive(
              enableFeedback: false,
              value: _exclusive,
              onChanged: (value) => setState(() {
                _exclusive = value;
              }),
              title: const Text('Exclusive Dish'),
            ),
          ],
        ));
  }
}
