import 'package:flutter/material.dart';

Container main_button(String text, Function action) {
  return Container(
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
          backgroundColor: Color.fromRGBO(156, 39, 176, 1),
        ),
        onPressed: () {
          action();
        },
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),
        )),
  );
}
