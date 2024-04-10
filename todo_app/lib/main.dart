import 'package:flutter/material.dart';
import 'package:todo_app/pages/dash/dash.dart';
import 'package:todo_app/pages/landing/landing.dart';
import 'package:todo_app/pages/login/login.dart';
import 'package:todo_app/pages/logout/logout.dart';
import 'package:todo_app/pages/manage_tasks/manage_tasks.dart';
import 'package:todo_app/pages/my_calender/my_calender.dart';
import 'package:todo_app/pages/profile/profile.dart';
import 'package:todo_app/pages/register/register.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: "/",

    routes: {
      '/':(context) =>  Landing(),
      '/dash':(context) =>  Dashboard(),
      '/login':(context) =>  Login(),
      '/reg':(context) => Register(),
      '/logout':(context) => Logout(),
      '/manage-tasks':(context) => ManageTasks(),
      '/calender':(context) => MyCalender(),
      '/profile':(context) => Profile()
    },
  ));
}
