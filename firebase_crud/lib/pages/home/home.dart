import 'package:firebase_crud/widgets/appbar_text/appbar_text.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String studentName, studentID, programmID;
  late double studentGPA;

  getStudentName(String name) {
    this.studentName = name;
    print(name);
  }

  getStudentID(String studentID) {
    this.studentID = studentID;
    print(studentID);
  }

  getProgrammID(String programmID) {
    this.programmID = programmID;
    print(programmID);
  }

  getStudentGPA(String studentGPA) {
    double gpa = double.parse(studentGPA);
    this.studentGPA = gpa;
    print(studentGPA);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            appbar_text("Flutter", Colors.cyan),
            appbar_text("Firebase", Colors.orange),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String name) {
                    getStudentName(name);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Student ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String studentID) {
                    getStudentID(studentID);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Study Program ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String programmID) {
                    getProgrammID(programmID);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "GPA",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String studentGPA) {
                    getStudentGPA(studentGPA);
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
