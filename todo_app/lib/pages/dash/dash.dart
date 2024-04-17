import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/widgets/bg_button/bg_button.dart';
import 'package:todo_app/widgets/bg_text/bg_text.dart';

import 'package:todo_app/widgets/drawer/sidenav.dart';
import 'package:todo_app/widgets/flexText/flexText.dart';

import 'package:todo_app/widgets/sm_text/sm_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      drawer: SideNav(),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 0, bottom: 20),
                child: Row(
                  children: [
                    bgText("Task", Colors.orange),
                    bgText("Track", Colors.blue)
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    smText("Hello ", Color.fromARGB(255, 78, 78, 78)),
                    smText("Jenipher Onyango", Colors.grey),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  smText("Empower Your Day, One Task at a Time.... ",
                      Color.fromARGB(255, 83, 82, 82)),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic,
                                size: 14,
                              )),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 14,
                              )),
                          hintText: "Search here...",
                          hintStyle: TextStyle(fontSize: 12),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 0.8,
                                  style: BorderStyle.solid,
                                  color: Color.fromARGB(255, 184, 183, 183)))),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: bgbutton(
                          "Add Tasks", Colors.white, () {}, Colors.orange)),
                  Expanded(
                      child: bgbutton(
                          "Manage Tasks", Colors.orange, () {}, Colors.white)),
                ],
              ),
              SizedBox(height: 12),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: smText("Latest upcoming task ...", Colors.black)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Image(
                          image: AssetImage("assets/images/face2.jpg"),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 7,
                        child: Container(
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    flexText("Title: ", Colors.black),
                                    flexText(
                                        " Birthday Celebration",
                                        const Color.fromARGB(
                                            255, 112, 111, 111)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    flexText("Date: ", Colors.black),
                                    flexText(
                                        " 30TH APRIL 2024",
                                        const Color.fromARGB(
                                            255, 112, 111, 111)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    flexText("Venue: ", Colors.black),
                                    flexText(
                                        " Buruburu",
                                        const Color.fromARGB(
                                            255, 112, 111, 111)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    flexText("Host Name: ", Colors.black),
                                    flexText(
                                        " Jenipher",
                                        const Color.fromARGB(
                                            255, 112, 111, 111)),
                                  ],
                                ),
                              ],
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              CarouselSlider(
                  items: [
                    Container(
                      child: Image(image: AssetImage("assets/images/bg5.jpg")),
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white),
                    ),
                    Container(
                      child: Image(image: AssetImage("assets/images/bg4.jpg")),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                    ),
                    Container(
                      child: Image(image: AssetImage("assets/images/bg3.jpg")),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                    ),
                    Container(
                      child: Image(image: AssetImage("assets/images/bg2.jpg")),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                    )
                  ],
                  options: CarouselOptions(
                      viewportFraction: 0.7,
                      reverse: true,
                      autoPlay: true,
                      enlargeFactor: 0.3,
                      enlargeCenterPage: true))
            ],
          ),
        ),
      )),
    );
  }
}
