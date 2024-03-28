import 'package:flutter/material.dart';

Expanded myButton(String label, Color colo, Function pressed) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(1),
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
    ),
  );
}
