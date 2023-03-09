import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Home Screen"),
      ),
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Navigate to Home Screen"),
                padding: EdgeInsets.all(10),
                duration: Duration(seconds: 1),
              ));
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
              Navigator.pushNamed(context, AppRoutes.BOTTOM.name);
            },
            icon: const Icon(Icons.navigation),
            tooltip: "Navigate To Bottom Screen",
          )
        ],
      ),
    );
  }
}
