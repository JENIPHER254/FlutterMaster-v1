import 'package:flutter/material.dart';

Text appbar_text(
  String my_text,
  Color my_color,
) {
  return Text(
    my_text,
    style:
        TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: my_color),
  );
}
