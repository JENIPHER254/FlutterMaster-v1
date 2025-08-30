import 'dart:math';

import 'package:flutter/material.dart';

class ColorChangeChallange extends StatefulWidget {
  const ColorChangeChallange({super.key});

  @override
  State<ColorChangeChallange> createState() => _ColorChangeChallangeState();
}

class _ColorChangeChallangeState extends State<ColorChangeChallange> {
  final PageController _pageController = PageController();
  int trackingPage = 0;

  // color list
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        itemCount: 200000,
        onPageChanged: (index) {
          setState(() {
            trackingPage = index >= 20 ? index.remainder(20) : index;
          });
          
        },
        itemBuilder: (context, index) {
          return Container(
            color: _colors[Random().nextInt(4)],
            child: Center(
              child: Text(
                'Page ${trackingPage + 1}',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
