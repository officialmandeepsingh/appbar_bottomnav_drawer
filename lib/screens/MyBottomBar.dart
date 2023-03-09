import 'package:flutter/material.dart';

import '../utils/routes.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedPageIndex = 0;
  final List<String> _pages = [
    'Home page',
    'Favorite page',
    'Profile page',
  ];

  void _selectBottomNavItem(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final strLabel = _pages[_selectedPageIndex];
    print("strLabel: $strLabel");
    return Scaffold(
      body: const Center(
        child: Text('Bottom Navigation '),
      ),
      appBar: AppBar(
        title: const Text("BottomBar Screen"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.HOME.name);
            },
            icon: const Icon(Icons.home),
            tooltip: "Add New Item",
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.DRAWER.name);
            },
            icon: const Icon(Icons.menu),
            tooltip: "Navigate to Drawer Screen",
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Click on Bottom Bar Navigation"),
                padding: EdgeInsets.all(10),
                duration: Duration(seconds: 1),
              ));
            },
            icon: const Icon(Icons.navigation),
            tooltip: "Navigate To Bottom Screen",
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_rounded),
              label: "Profile"),
        ],
        currentIndex: _selectedPageIndex,
        onTap: _selectBottomNavItem,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
