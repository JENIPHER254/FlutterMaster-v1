import "package:flutter/material.dart";

Container bgbutton(String mytext, Color color, Function action, Color bgcolor) {
  return Container(
    margin: EdgeInsets.all(8),
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: bgcolor,
          padding: EdgeInsets.all(12)),
      onPressed: () {
        action();
      },
      child: Text(
        mytext,
        style: TextStyle(
          
          color: color, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
