import "package:flutter/material.dart";

Text midText(String mytext, Color color) {
  return Text(
    mytext,
    style: TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}
