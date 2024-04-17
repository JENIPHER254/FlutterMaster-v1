import "package:flutter/material.dart";

Container bgbutton(String mytext, Color color, Function action, Color bgcolor) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor, padding: EdgeInsets.all(12)),
      onPressed: () {
        action();
      },
      child: Text(
        mytext,
        style: TextStyle(color: color, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
