import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:todo_app/widgets/drawer/sidenav.dart';
import 'package:todo_app/widgets/midtxt/midtxt.dart';

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
                child: Row(
                  children: [
                    smText("Hello ", Color.fromARGB(255, 78, 78, 78)),
                    smText("Jenipher Onyango", Colors.grey),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  midText("Empower Your Day, One Task at a Time. ",
                      Color.fromARGB(255, 83, 82, 82)),
                  Row(
                    children: [
                      midText("Task", Colors.orange),
                      midText("Track", Colors.blue),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
