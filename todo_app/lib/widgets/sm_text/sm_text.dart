import "package:flutter/material.dart";

Text smText(String mytext, Color color) {
  return Text(
    mytext,
    style: TextStyle(
      color: color,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
  );
}
