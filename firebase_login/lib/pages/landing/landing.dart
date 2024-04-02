import 'package:firebase_login/widgets/big_text.dart';
import 'package:firebase_login/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/img1.jpg")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  big_text("Flutter", Colors.black),
                  big_text("Firebase", Color.fromARGB(255, 118, 6, 138))
                ],
              ),
              SizedBox(
                height: 60,
              ),
              main_button("Get Started", () {
                Navigator.pushNamed(context, "siginin");
              }),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
