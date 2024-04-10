import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/widgets/bg_text/bg_text.dart';
import 'package:todo_app/widgets/sm_button/smbutton.dart';
import 'package:todo_app/widgets/sm_text/sm_text.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Image(
                width: double.infinity,
                image: AssetImage("assets/images/img01.jpeg"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            bgText("PrioriTask", Colors.orange),
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/img05.jpg"),
                height: 200,
              ),
            ),
            smText('" Empower Your Day, One Task at a Time..."', Colors.grey),
            SizedBox(
              height: 30,
            ),
            smbutton("Get Started", Colors.white, () {
              Navigator.pushNamed(context, "/login");
            }, Colors.orange),
          ],
        ),
      ),
    );
  }
}
