import 'package:flutter/material.dart';

Container blur_text(String text, Color color) {
  return Container(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 14),
    ),
  );
}
