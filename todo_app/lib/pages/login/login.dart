import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/widgets/bg_text/bg_text.dart';
import 'package:todo_app/widgets/sm_text/sm_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //CREATING IMAGE BUTTON
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
                      },
                      child: Image(
                        image: AssetImage("assets/images/logo.png"),
                        width: 150,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        bgText("Task", Colors.orange),
                        bgText("Track", Colors.blue),
                      ],
                    ),
                    smText("Login To Access Utilities...",
                        Color.fromARGB(255, 196, 195, 195)),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 22),
                      child: TextField(
                        cursorColor: Colors.orange,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 241, 171, 66))),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                            label: Text("Username / Email")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 22),
                      child: TextField(
                        cursorColor: Colors.orange,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 241, 171, 66))),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                            label: Text("Password")),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
