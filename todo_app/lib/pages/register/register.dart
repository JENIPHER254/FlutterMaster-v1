import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/bg_button/bg_button.dart';
import '../../widgets/bg_text/bg_text.dart';
import '../../widgets/flexText/flexText.dart';
import '../../widgets/sm_text/sm_text.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                        width: 130,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        bgText("Task", Colors.orange),
                        bgText("Track", Colors.blue),
                      ],
                    ),
                    smText("Register with TaskTrack...",
                        Color.fromARGB(255, 196, 195, 195)),
                    SizedBox(
                      height: 38,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 22),
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
                            label: Text("First Name")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 22),
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
                            label: Text("Last Name")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 22),
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
                            label: Text("Email")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 22),
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
                            label: Text("Username")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 22),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 22),
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
                            label: Text("Confirm Password")),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 15),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/");
                              },
                              child: flexText("Back to Home Page...",
                                  const Color.fromARGB(255, 194, 192, 192))),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: .0, horizontal: 35),
                      child: bgbutton("REGISTER", Colors.white, () {
                        Navigator.pushNamed(context, "/login");
                      }, Colors.orange),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  flexText("Already have an account ?", Colors.grey),
                  flexText("Login ", Colors.grey),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: flexText("Here !!", Colors.blue),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
