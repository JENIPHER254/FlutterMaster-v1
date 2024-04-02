import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login/firebase_options.dart';
import 'package:firebase_login/pages/forgot/Forgot.dart';
import 'package:firebase_login/pages/home/home.dart';
import 'package:firebase_login/pages/landing/landing.dart';
import 'package:firebase_login/pages/reset_code/reset_code.dart';
import 'package:firebase_login/pages/siginin/signin.dart';
import 'package:firebase_login/pages/signup/siginup.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Landing(),
      "home": (context) => Home(),
      "siginin": (context) => Signin(),
      "signup": (context) => Signup(),
      "forgot": (context) => Forgot(),
      "resetcode": (context) => ResetCode()
    },
  ));
}
