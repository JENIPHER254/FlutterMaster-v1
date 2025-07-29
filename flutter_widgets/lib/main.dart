import 'package:flutter/material.dart';

import 'layout/layout.dart';
import 'page_view_wiget/page_view_widget.dart';

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
      debugShowCheckedModeBanner: false,
      theme: isLigntTheme ? ThemeData.light() : ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              toggleTheme: toggleTheme,
            ),
        '/page_view': (context) => PageViewDemo(),
      },
    );
  }
}
