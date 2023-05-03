import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/presentation/screens/home/home_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
  };
}
