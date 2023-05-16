import 'package:cat_breeds_app/presentation/ui/screens/developer-info/developer_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:cat_breeds_app/presentation/ui/screens/home/home_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'developer': (BuildContext context) => const DeveloperInformationScreen(),
  };
}
