import "package:flutter/material.dart";

Text bgText(String mytext, Color color) {
  return Text(
    mytext,
    style: TextStyle(
      color: color,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}
