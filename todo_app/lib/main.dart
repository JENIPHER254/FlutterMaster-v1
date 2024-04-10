import 'package:flutter/material.dart';
import 'package:todo_app/pages/landing/landing.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: "/",

    routes: {
      '/':(context) => const Landing(),
    },
  ));
}
