import 'package:app_nav_bottom/screens/MyBottomBar.dart';
import 'package:app_nav_bottom/screens/MyDrawer.dart';
import 'package:flutter/material.dart';

import 'screens/Home.dart';
import 'utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mandeep App",
      initialRoute: AppRoutes.HOME.name,
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME.name: (ctx) => const Home(),
        AppRoutes.BOTTOM.name: (ctx) => const MyBottomBar(),
        AppRoutes.DRAWER.name: (ctx) => const MyDrawer(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const Home());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const Home());
      },
    );
  }
}
