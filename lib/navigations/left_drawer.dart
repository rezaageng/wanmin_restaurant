import 'package:flutter/material.dart';
import '../screens/filter.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('assets/images/drawer_bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SizedBox(),
              ),
            ),
            ListTile(
              enableFeedback: false,
              leading: const Icon(Icons.restaurant),
              title: const Text(
                'Dish',
              ),
              onTap: () => Navigator.of(context).pushReplacementNamed('/'),
            ),
            ListTile(
              enableFeedback: false,
              leading: const Icon(Icons.short_text),
              title: const Text('Filter'),
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed(Filter.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
