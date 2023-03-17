import 'package:flutter/material.dart';

import '../home.dart';
import 'recipe.dart';

class Component extends StatefulWidget {
  const Component({super.key});

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  int currentIndex = 0;
  final screens = [
    const Home(),
    const Recipe(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Recipe',
              icon: Icon(Icons.receipt),
            ),
            BottomNavigationBarItem(
                label: 'Notification', icon: Icon(Icons.notification_add_sharp))
          ],
        ),
        body: screens[currentIndex]);
  }
}
