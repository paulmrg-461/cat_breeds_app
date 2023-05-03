import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/config/routes/app_routes.dart';
import 'package:pragma_flutter_cats_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pragma Cats App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes,
        theme: AppTheme().getTheme());
  }
}
