import 'package:firebase_login/widgets/big_text.dart';
import 'package:firebase_login/widgets/blur_text.dart';
import 'package:firebase_login/widgets/loginreg_button.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    //String userEmail, userPassword;
    // TextEditingController _emailController = TextEditingController();
    // TextEditingController _passwordController = TextEditingController();

    getUserEmail(email) {
      return print(email);
    }

    getUserPassword(password) {
      return print(password);
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
                  child: big_text(
                      "Welcome Back... ", Color.fromARGB(255, 108, 18, 124))),
              SizedBox(
                height: 15,
              ),
              big_text("Signin", Colors.black),
              SizedBox(
                height: 35,
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
                      decoration:
                          InputDecoration(label: Text("Email / Username")),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: blur_text("Forgot Password ..."))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  loginreg_button("Signin", () {
                    Navigator.pushNamed(context, "home");
                  }),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: blur_text("Subscribe to BYTESCAPE...."),
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
