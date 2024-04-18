import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/widgets/bg_button/bg_button.dart';

import 'package:todo_app/widgets/drawer/sidenav.dart';
import 'package:todo_app/widgets/flexText/flexText.dart';
import 'package:todo_app/widgets/sm_text/sm_text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      drawer: SideNav(),
      body: Container(
        padding: EdgeInsets.all(12),
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage("assets/images/face6.webp"),
              ),
              SizedBox(
                height: 12,
              ),
              smText("Jenipher A. Onyango", Colors.black),
              smText("onyangoje123@gmail.com", Colors.grey),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 252, 252),
                    boxShadow: [
                      BoxShadow(color: Colors.blueGrey, blurRadius: 5)
                    ]),
                width: double.infinity,
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        smText("Task", Colors.orange),
                        smText("Track", Colors.blue),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        smText("Account Type : ", Colors.black),
                        smText(" Premium User", Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: bgbutton(
                          "Edit Details", Colors.white, () {}, Colors.orange)),
                  Expanded(
                      child: bgbutton("Add Social Links", Colors.orange, () {},
                          Colors.white)),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              smText("Phone Number", Colors.black),
                              flexText("0717639683",
                                  const Color.fromARGB(255, 117, 117, 117)),
                            ],
                          ))),
                  SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 1,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              smText("Account ID", Colors.black),
                              flexText("446JD12",
                                  const Color.fromARGB(255, 117, 117, 117)),
                            ],
                          ))),
                  SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      thickness: 1,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              smText("My Username", Colors.black),
                              flexText("Jenipher254",
                                  const Color.fromARGB(255, 117, 117, 117)),
                            ],
                          ))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
