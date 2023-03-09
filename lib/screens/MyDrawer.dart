import 'package:flutter/material.dart';

import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: tapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Click on Bottom Bar Navigation"),
                padding: EdgeInsets.all(10),
                duration: Duration(seconds: 1),
              ));
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            buildListTile("Home", Icons.home, () {}),
            buildListTile("Add", Icons.add, () {}),
            buildListTile("Delete", Icons.delete, () {}),
            buildListTile("Exit", Icons.exit_to_app, () {})
          ],
        ),
      ),
    );
  }
}
