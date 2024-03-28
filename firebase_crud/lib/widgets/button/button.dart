import 'package:flutter/material.dart';

ElevatedButton myButton(String label, Color colo, Function pressed) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: colo),
    child: Text(
      label,
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      pressed();
    },
  );
}
