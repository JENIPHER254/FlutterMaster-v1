import 'package:crud_firepase_v2/pages/form.dart';
import 'package:crud_firepase_v2/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => Home(), '/form': (context) => FormPage()},
  ));
}
