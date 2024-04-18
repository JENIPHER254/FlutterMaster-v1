import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/flexText/flexText.dart';
import 'package:todo_app/widgets/sm_text/sm_text.dart';

Container taskCard(String title, String date, String venue, String hostName, String taskID) {
  return Container(
    margin: EdgeInsets.all(12),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ], borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            smText("Task", Colors.orange),
            smText("Track", Colors.blue),
            smText(taskID, const Color.fromARGB(255, 0, 0, 0))
          ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              flexText("Title: ", Colors.black),
              flexText(title, const Color.fromARGB(255, 112, 111, 111)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              flexText("Date: ", Colors.black),
              flexText(date, const Color.fromARGB(255, 112, 111, 111)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              flexText("Venue: ", Colors.black),
              flexText(
                venue,
                const Color.fromARGB(255, 112, 111, 111),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              flexText("Host  Name: ", Colors.black),
              flexText(
                hostName,
                const Color.fromARGB(255, 112, 111, 111),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
