import 'package:flutter/material.dart';

Container blur_text(String text) {
  return Container(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),
    ),
  );
}
