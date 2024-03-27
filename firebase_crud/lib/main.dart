import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/pages/form/form.dart';
import 'package:firebase_crud/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {'/': (context) => HomePage(), '/form': (context) => FormPage()},
  ));
}
