import 'package:firebase_login/widgets/big_text.dart';
import 'package:firebase_login/widgets/blur_text.dart';
import 'package:firebase_login/widgets/loginreg_button.dart';
import 'package:flutter/material.dart';

class ResetCode extends StatefulWidget {
  const ResetCode({super.key});

  @override
  State<ResetCode> createState() => _ResetCodeState();
}

class _ResetCodeState extends State<ResetCode> {
  @override
  Widget build(BuildContext context) {
    getUserEmail(email) {
      return print(email);
    }

    getUserPassword(pass1) {
      return print(pass1);
    }

    getUserConfirmPassword(pass2) {
      return print(pass2);
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String pass1) {
                        getUserPassword(pass1);
                      },
                      decoration: InputDecoration(label: Text("New Password")),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String pass2) {
                        getUserConfirmPassword(pass2);
                      },
                      decoration:
                          InputDecoration(label: Text("Confirm new password")),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  loginreg_button("Reset Password", () {
                    Navigator.pushNamed(context, "siginin");
                  }),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        blur_text("Didnt Get reset code?  ", Colors.grey),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "forgot");
                            },
                            child: blur_text("get new one..", Colors.purple)),
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
