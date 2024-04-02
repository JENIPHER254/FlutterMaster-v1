import 'package:firebase_login/widgets/big_text.dart';
import 'package:firebase_login/widgets/blur_text.dart';
import 'package:firebase_login/widgets/main_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/img3.jpg")),
              SizedBox(
                height: 32,
              ),
              big_text("Welcome back ", Colors.black),
              blur_text("BYTESCAPE...", Color.fromARGB(255, 104, 103, 105)),
              SizedBox(
                height: 32,
              ),
              main_button("LOGOUT", () {
                Navigator.pushNamed(context, "siginin");
              })
            ],
          ),
        ),
      ),
    );
  }
}
