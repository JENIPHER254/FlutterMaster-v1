import 'package:firebase_login/widgets/big_text.dart';
import 'package:firebase_login/widgets/blur_text.dart';
import 'package:firebase_login/widgets/loginreg_button.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    getUserEmail(email) {
      return print(email);
    }

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/images/wave1.jpeg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Center(
                  child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: big_text(
                    "Welcome Back... ", Color.fromARGB(255, 108, 18, 124)),
              )),
              SizedBox(
                height: 15,
              ),
              big_text("Reset Password", Colors.black),
              SizedBox(
                height: 45,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String email) {
                        getUserEmail(email);
                      },
                      decoration: InputDecoration(label: Text("Email")),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  loginreg_button("Get Reset Code", () {
                    Navigator.pushNamed(context, "home");
                  }),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        blur_text("Go Back to login  ", Colors.grey),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "signup");
                            },
                            child: blur_text("here..", Colors.purple)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
