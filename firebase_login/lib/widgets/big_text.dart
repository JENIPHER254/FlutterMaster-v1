import 'package:flutter/material.dart';

Container big_text(String text, Color color) {
  return Container(
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: color),
    ),
  );
}
