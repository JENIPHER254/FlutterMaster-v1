import "package:flutter/material.dart";

Text flexText(String mytext, Color color) {
  return Text(
    mytext,
    textAlign: TextAlign.right,
    style: TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  );
}
