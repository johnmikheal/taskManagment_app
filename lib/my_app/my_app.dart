import 'package:flutter/material.dart';
import 'package:project_6/config/theme/my_theme.dart';
import 'package:project_6/core/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutsManager.router,
      initialRoute:RoutsManager.homeRoute,
      theme: MyTheme.LightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
