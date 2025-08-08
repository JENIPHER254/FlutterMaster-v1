import 'package:flutter/material.dart';

class VerticalManual extends StatelessWidget {
  const VerticalManual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text(
          'This is the PageView Demo page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ));
  }
}
