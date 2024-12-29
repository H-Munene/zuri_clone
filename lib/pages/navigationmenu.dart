import 'package:flutter/material.dart';
import 'package:zuri_health_clone/utils/globals.dart' as globals;

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _HomepageState();
}

class _HomepageState extends State<NavigationMenu> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.lightBlueAccent),
        child: NavigationBar(
          onDestinationSelected: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: globals.bottomNavBar.map((item) => item).toList(),
        ),
      ),
      body: globals.pages[currentPageIndex]
    );
  }
}
