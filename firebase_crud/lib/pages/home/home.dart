import 'package:firebase_crud/widgets/appbar_text/appbar_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            appbar_text("Flutter", Colors.cyan),
            appbar_text("Firebase", Colors.orange),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text("Welcome To BYTESCAPE"),
            )
          ],
        ),
      ),
    );
  }
}
