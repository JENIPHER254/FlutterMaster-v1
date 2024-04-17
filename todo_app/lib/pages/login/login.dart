import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/widgets/bg_button/bg_button.dart';
import 'package:todo_app/widgets/bg_text/bg_text.dart';
import 'package:todo_app/widgets/flexText/flexText.dart';
import 'package:todo_app/widgets/sm_text/sm_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? isChecked = false;
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
                    smText("Login To Access Utilities...",
                        Color.fromARGB(255, 196, 195, 195)),
                    SizedBox(
                      height: 35,
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
                            label: Text("Username / Email")),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 15),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/forgot");
                              },
                              child: flexText("Forgot Password...",
                                  const Color.fromARGB(255, 194, 192, 192))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            tristate: true,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          flexText("remember details", Colors.blueGrey)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: .0, horizontal: 35),
                      child: bgbutton("LOGIN", Colors.white, () {
                        Navigator.pushNamed(context, "/dash");
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
                  flexText("Don't have an account ?", Colors.grey),
                  flexText("Register ", Colors.grey),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/reg");
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
