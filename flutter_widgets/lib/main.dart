import 'package:flutter/material.dart';

import 'layout/layout.dart';
import 'page_view_wiget/horizontal_auto.dart';
import 'page_view_wiget/horizontal_manual.dart';
import 'page_view_wiget/vertical_auto.dart';
import 'page_view_wiget/vertical_manual.dart';

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
        '/': (context) => LandingPage(
              toggleTheme: toggleTheme,
            ),
        '/pageview_horizontal_auto': (context) => HorizontalAutomatic(),
        '/pageview_horizontal_manual': (context) => HorizontalManual(),
        '/pageview_vertical_auto': (context) => VerticalAutomatic(),
        '/pageview_vertical_manual': (context) => VerticalManual(),
      },
    );
  }
}
