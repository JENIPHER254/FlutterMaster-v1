import 'package:flutter/material.dart';

Container myButton(String label, Color colo, Function pressed) {
  return Container(
    padding: EdgeInsets.all(3),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: colo),
      child: Text(
        label,
        style: TextStyle(
            color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        pressed();
      },
    ),
  );
}
