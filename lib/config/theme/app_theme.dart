import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkmode;

  AppTheme({
    this.isDarkmode = true,
  });

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: Colors.deepPurple,
        appBarTheme: const AppBarTheme(centerTitle: false),
      );
}
