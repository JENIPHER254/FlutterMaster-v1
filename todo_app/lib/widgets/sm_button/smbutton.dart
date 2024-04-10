import "package:flutter/material.dart";

ElevatedButton smbutton(
    String mytext, Color color, Function action, Color bgcolor) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: bgcolor),
    onPressed: () {
      action();
    },
    child: Text(
      mytext,
      style: TextStyle(color: color, fontWeight: FontWeight.bold),
    ),
  );
}
