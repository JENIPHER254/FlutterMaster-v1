import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:trial/pages/form.dart';
import 'package:trial/pages/home.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: "AIzaSyDc-UodF0wkn5W17C0gRlP9JZXG2TKl7UEs",
          appId: "1:1011531549309:android:535a5c31e89396fad37f14",
          messagingSenderId: "1011531549309",
          projectId: "flutter-master-8e0e3",
          //storageBucket: "opject7.appspot.com",
        ))
      : await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => Home(), '/form': (context) => FormPage()},
  ));
}
