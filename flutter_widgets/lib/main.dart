import 'package:flutter/material.dart';

import 'layout/layout.dart';

void main() {
  runApp(MainLayout());
}

class MainLayout extends StatefulWidget {
  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  bool isLigntTheme = true;
  void toggleTheme() {
    setState(() {
      isLigntTheme = !isLigntTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isLigntTheme ? ThemeData.light() : ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              toggleTheme: toggleTheme,
            ),
      },
    );
  }
}
