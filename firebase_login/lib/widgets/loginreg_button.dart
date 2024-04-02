import 'package:flutter/material.dart';

Container loginreg_button(String text, Function action) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    width: double.infinity,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
          backgroundColor: Color.fromRGBO(156, 39, 176, 1),
        ),
        onPressed: () {
          action();
        },
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
          ),
        )),
  );
}
