import 'package:firebase_login/widgets/big_text.dart';
import 'package:firebase_login/widgets/blur_text.dart';
import 'package:firebase_login/widgets/loginreg_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  getUserEmail(email) {
    return print(email);
  }

  getUserPassword(password) {
    return print(password);
  }

  @override
  Widget build(BuildContext context) {
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
                  child: big_text(
                      "Welcome Back... ", Color.fromARGB(255, 108, 18, 124))),
              SizedBox(
                height: 15,
              ),
              big_text("Signup", Colors.black),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String first_name) {
                        getUserEmail(first_name);
                      },
                      decoration: InputDecoration(label: Text("First Name ")),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String last_name) {
                        getUserEmail(last_name);
                      },
                      decoration: InputDecoration(label: Text("Last Name")),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String email) {
                        getUserEmail(email);
                      },
                      decoration: InputDecoration(label: Text("Email ")),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _emailController,
                      onChanged: (String username) {
                        getUserEmail(username);
                      },
                      decoration: InputDecoration(label: Text(" Username")),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _passwordController,
                      onChanged: (String password) {
                        getUserPassword(password);
                      },
                      decoration: InputDecoration(label: Text("Password")),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      //controller: _passwordController,
                      onChanged: (String password_confirm) {
                        getUserPassword(password_confirm);
                      },
                      decoration:
                          InputDecoration(label: Text("Confirm Password")),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child:
                                blur_text("Forgot Password ...", Colors.grey))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  loginreg_button("Signup", () {
                    Navigator.pushNamed(context, "siginin");
                  }),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        blur_text("Already have an account ?  ", Colors.grey),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "siginin");
                            },
                            child: blur_text("signin here..", Colors.purple)),
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
