import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image(
              width: double.infinity,
              image: AssetImage("assets/images/img01.jpeg"),
            ),
          ),
        ],
      ),
    );
  }
}
